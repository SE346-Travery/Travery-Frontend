import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';
import 'package:app_links/app_links.dart';

import 'package:travery_frontend/config/dependencies.dart';
import 'package:travery_frontend/data/services/deep_link_service.dart';
import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.root.level = Level.ALL;

  final deepLinkService = DeepLinkService.instance;
  final appLinks = AppLinks();

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

  // Listen for deep links (handles both cold start and hot start)
  appLinks.uriLinkStream.listen((uri) {
    deepLinkService.handleUri(uri);
  });
}
