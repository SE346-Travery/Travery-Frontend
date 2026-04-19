import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/app_router.dart';
import 'main_development.dart' as development;

void main() {
  development.main();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: appRouter(context.read()));
  }
}
