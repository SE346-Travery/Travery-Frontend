import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/routing/app_router.dart';
import 'package:travery_frontend/data/services/auth_service.dart';
import 'package:travery_frontend/data/repositories/auth_repository_remote.dart';

void main() {
  runApp(
    // Dependency Injection: Chỉ khởi tạo service và repository_remote
    // ViewModel khởi tạo ở router để tránh tạo quá nhiều instance
    MultiProvider(
      providers: [
        Provider(create: (context) => AuthService()),
        Provider(create: (context) => SecurityStorageService()),

        Provider(
          create: (context) => AuthRepositoryRemote(
            authService: context.read(),
            securityStorageService: context.read(),
          ) as AuthRepository,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Travery', routerConfig: AppRouter.router);
  }
}

