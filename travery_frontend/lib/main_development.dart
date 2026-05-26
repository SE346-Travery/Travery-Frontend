import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';
import 'package:go_router/go_router.dart';
import 'package:app_links/app_links.dart';

import 'package:travery_frontend/config/dependencies.dart';
import 'package:travery_frontend/data/services/deep_link_service.dart';
import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.root.level = Level.ALL;

  final appLinks = AppLinks();
  final deepLinkService = DeepLinkService.instance;

  runApp(
    MultiProvider(
      providers: providers,
      child: Builder(
        builder: (context) {
          return MyApp(
            onRouterInitialized: (router) {
              deepLinkService.registerRouter(router);
            },
          );
        },
      ),
    ),
  );

  appLinks.uriLinkStream.listen((uri) {
    deepLinkService.handleUri(uri);
  });
}
