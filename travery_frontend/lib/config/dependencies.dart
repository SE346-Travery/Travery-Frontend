import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/data/repositories/auth_repository_remote.dart';
import 'package:travery_frontend/data/repositories/receptionist_repository.dart';
import 'package:travery_frontend/data/repositories/receptionist_repository_mock.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/data/repositories/tour_repository_mock.dart';

import 'package:travery_frontend/data/services/api/auth_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';

List<SingleChildWidget> get providers => [
  Provider(create: (context) => AuthService()),
  Provider(create: (context) => SecurityStorageService()),
  ChangeNotifierProvider(
    create: (context) =>
        AuthRepositoryRemote(
              authService: context.read(),
              securityStorageService: context.read(),
            )
            as AuthRepository,
  ),
  Provider<TourRepository>(create: (context) => TourRepositoryMock()),

  // Receptionist - đổi sang ReceptionistRepositoryRemote khi có API
  ChangeNotifierProvider(
    create: (context) => ReceptionistRepositoryMock() as ReceptionistRepository,
  ),
];
