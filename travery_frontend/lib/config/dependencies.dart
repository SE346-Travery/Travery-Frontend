import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/data/repositories/admin_repository_dev.dart';
import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/data/repositories/auth_repository_remote.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/data/repositories/tour_repository_mock.dart';

import 'package:travery_frontend/data/services/api/auth_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/data/services/tour/tour_service_mock.dart';

import 'package:travery_frontend/ui/admin/view_model/account_management_view_model.dart';
import 'package:travery_frontend/ui/admin/view_model/create_account_view_model.dart';
import 'package:travery_frontend/ui/admin/view_model/dashboard_view_model.dart';
import 'package:travery_frontend/ui/admin/view_model/hotel_management_view_model.dart';
import 'package:travery_frontend/ui/admin/view_model/tour_management_view_model.dart';
import 'package:travery_frontend/ui/admin/view_model/vehicle_management_view_model.dart';
import 'package:travery_frontend/ui/user/home/view_models/tour_home_view_model.dart';
import 'package:travery_frontend/ui/user/tour/list/view_models/tour_list_view_model.dart';

List<SingleChildWidget> get providers => [
  Provider(create: (context) => AuthService()),
  Provider(create: (context) => SecurityStorageService()),
  ChangeNotifierProvider(
    create:
        (context) =>
            AuthRepositoryRemote(
                  authService: context.read(),
                  securityStorageService: context.read(),
                )
                as AuthRepository,
  ),
  Provider<TourRepository>(create: (context) => TourRepositoryMock()),
  Provider<TourService>(create: (context) => TourServiceMock()),

  // ── Admin repository ──────────────────────────────────────────────────────
  ChangeNotifierProvider<AdminRepository>(
    create: (context) => AdminRepositoryDev(),
  ),

  // ── Admin ViewModels ──────────────────────────────────────────────────────
  ChangeNotifierProvider(
    create:
        (context) =>
            DashboardViewModel(adminRepository: context.read<AdminRepository>()),
  ),
  ChangeNotifierProvider(
    create:
        (context) => AccountManagementViewModel(
          adminRepository: context.read<AdminRepository>(),
        ),
  ),
  ChangeNotifierProvider(
    create:
        (context) => VehicleManagementViewModel(
          adminRepository: context.read<AdminRepository>(),
        ),
  ),
  ChangeNotifierProvider(
    create:
        (context) => HotelManagementViewModel(
          adminRepository: context.read<AdminRepository>(),
        ),
  ),
  ChangeNotifierProvider(
    create:
        (context) => TourManagementViewModel(
          adminRepository: context.read<AdminRepository>(),
        ),
  ),
  ChangeNotifierProvider(
    create:
        (context) => CreateAccountViewModel(
          adminRepository: context.read<AdminRepository>(),
        ),
  ),

  // ── User ViewModels ───────────────────────────────────────────────────────
  ChangeNotifierProvider(
    create:
        (context) =>
            TourHomeViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create:
        (context) =>
            TourListViewModel(tourService: context.read<TourService>()),
  ),
];
