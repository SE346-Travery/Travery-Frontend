import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/data/repositories/admin_repository_dev.dart';
import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/data/repositories/auth_repository_remote.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/data/repositories/tour_repository_mock.dart';
import 'package:travery_frontend/data/repositories/mission_repository.dart';
import 'package:travery_frontend/data/repositories/mission_repository_mock.dart';
import 'package:travery_frontend/data/repositories/check_in_repository.dart';
import 'package:travery_frontend/data/repositories/check_in_repository_mock.dart';
import 'package:travery_frontend/data/repositories/tour_progress_repository.dart';
import 'package:travery_frontend/data/repositories/tour_progress_repository_mock.dart';
import 'package:travery_frontend/data/repositories/tour_completed_repository.dart';
import 'package:travery_frontend/data/repositories/tour_completed_repository_mock.dart';

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
import 'package:travery_frontend/data/services/booking/booking_service.dart';
import 'package:travery_frontend/data/services/booking/booking_service_mock.dart';
import 'package:travery_frontend/data/services/guide/guide_service.dart';
import 'package:travery_frontend/data/services/guide/guide_service_mock.dart';
import 'package:travery_frontend/data/services/mission/mission_service.dart';
import 'package:travery_frontend/data/services/mission/mission_service_mock.dart';
import 'package:travery_frontend/ui/user/home/view_models/tour_home_view_model.dart';
import 'package:travery_frontend/ui/user/tour/list/view_models/tour_list_view_model.dart';
import 'package:travery_frontend/ui/user/tour/detail/view_models/tour_detail_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';
import 'package:travery_frontend/ui/guide/home/view_models/guide_home_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/view_models/mission_detail_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/check_in/view_models/check_in_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/tour_progress/view_models/tour_progress_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/view_models/our_completed_view_model.dart';

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
  Provider<BookingService>(create: (context) => BookingServiceMock()),
  Provider<GuideService>(create: (context) => GuideServiceMock()),
  Provider<MissionRepository>(create: (context) => MissionRepositoryMock()),
  Provider<MissionService>(create: (context) => MissionServiceMock()),
  Provider<CheckInRepository>(create: (context) => CheckInRepositoryMock()),
  Provider<TourProgressRepository>(
    create: (context) => TourProgressRepositoryMock(),
  ),
  Provider<TourCompletedRepository>(
    create: (context) => TourCompletedRepositoryMock(),
  ),
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
  ChangeNotifierProvider(
    create: (context) =>
        TourDetailViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        BookingViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        GuideHomeViewModel(guideService: context.read<GuideService>()),
  ),
  ChangeNotifierProvider(
    create: (context) => MissionDetailViewModel(
      missionRepository: context.read<MissionRepository>(),
    ),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        CheckInViewModel(checkInRepository: context.read<CheckInRepository>()),
  ),
  ChangeNotifierProvider(
    create: (context) => TourProgressViewModel(
      repository: context.read<TourProgressRepository>(),
    ),
  ),
  ChangeNotifierProvider(
    create: (context) => TourCompletedViewModel(
      repository: context.read<TourCompletedRepository>(),
    ),
  ),
];
