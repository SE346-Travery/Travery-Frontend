import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/data/repositories/auth_repository_remote.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/data/repositories/tour_repository_mock.dart';

import 'package:travery_frontend/data/services/api/auth_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/data/services/tour/tour_service_mock.dart';
import 'package:travery_frontend/ui/user/home/view_models/tour_home_view_model.dart';
import 'package:travery_frontend/ui/user/tour/list/view_models/tour_list_view_model.dart';

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
  Provider<TourService>(create: (context) => TourServiceMock()),
  ChangeNotifierProvider(
    create: (context) =>
        TourHomeViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        TourListViewModel(tourService: context.read<TourService>()),
  ),
];
