import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';
import 'package:travery_frontend/routing/app_router.dart';
import 'package:travery_frontend/data/services/deep_link_service.dart';
import 'main_development.dart' as development;

void main() {
  development.main();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = appRouter(context.read());
    // Register the router with DeepLinkService
    DeepLinkService.instance.registerRouter(_router);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        extensions: [
          // Light Mode
          CometChatColorPalette(
            primary: Color(0xFF6852D6),
            textPrimary: Color(0xFF141414),
            textSecondary: Color(0xFF727272),
            background1: Color(0xFFFFFFFF),
            borderLight: Color(0xFFF5F5F5),
            borderDark: Color(0xFFDCDCDC),
            iconSecondary: Color(0xFFA1A1A1),
            iconHighlight: Color(0xFF6852D6),
            success: Color(0xFF09C26F),
            warning: Color(0xFFFAAB00),
            extendedPrimary500: Color(0xFFAA9EE8),
            messageSeen: Color(0xFF56E8A7),
            neutral300: Color(0xFFE8E8E8),
            neutral600: Color(0xFF727272),
            neutral900: Color(0xFF141414),
          ),
        ],
      ),
    );
  }
}
