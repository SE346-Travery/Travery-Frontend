import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/app_router.dart';
import 'main_development.dart' as development;

void main() {
  development.main();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router(context.read()));
  }
}
