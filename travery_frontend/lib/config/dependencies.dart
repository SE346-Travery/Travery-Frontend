import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:travery_frontend/data/repositories/admin/admin_repository.dart';
import 'package:travery_frontend/data/repositories/admin/admin_repository_dev.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository_dev.dart';
import 'package:travery_frontend/data/repositories/authentication/auth_repository.dart';
import 'package:travery_frontend/data/repositories/authentication/auth_repository_remote.dart';
import 'package:travery_frontend/data/repositories/user/user_booking_repository.dart';

import 'package:travery_frontend/data/services/api/auth_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';

import 'package:travery_frontend/data/services/booking/booking_service.dart';
import 'package:travery_frontend/ui/user/home/view_models/home_view_model.dart';
import 'package:travery_frontend/ui/user/tour/list/view_models/tour_list_view_model.dart';
import 'package:travery_frontend/ui/user/tour/detail/view_models/tour_detail_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_input/view_models/booking_input_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_review/view_models/booking_review_view_model.dart';
import 'package:travery_frontend/ui/user/tour/payment/view_models/vnpay_payment_view_model.dart';
import 'package:travery_frontend/ui/user/tour/payment_result/view_models/payment_result_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_list/view_models/booking_list_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_detail/view_models/booking_detail_view_model.dart';
import 'package:travery_frontend/ui/user/tour/cancel/view_models/cancel_booking_view_model.dart';

import '../data/services/tour/tour_service_impl.dart';

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
  Provider<TourService>(
    create: (context) => TourServiceImpl(
      securityStorageService: context.read<SecurityStorageService>(),
    ),
  ),

  // ── Admin repository ──────────────────────────────────────────────────────
  ChangeNotifierProvider<AdminRepository>(
    create: (context) => AdminRepositoryDev(),
  ),

  // ── Coordinator repository ────────────────────────────────────────────────
  ChangeNotifierProvider<CoordinatorRepository>(
    create: (context) => CoordinatorRepositoryDev(),
  ),

  // ── User ViewModels ───────────────────────────────────────────────────────
  Provider<BookingService>(
    create: (context) => UserBookingRepository(
      securityStorageService: context.read<SecurityStorageService>(),
    ),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        HomeViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        TourListViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        TourDetailViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        BookingInputViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        BookingReviewViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        VNPayPaymentViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        PaymentResultViewModel(tourService: context.read<TourService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        BookingListViewModel(bookingService: context.read<BookingService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        BookingDetailViewModel(bookingService: context.read<BookingService>()),
  ),
  ChangeNotifierProvider(
    create: (context) =>
        CancelBookingViewModel(bookingService: context.read<BookingService>()),
  ),
];
