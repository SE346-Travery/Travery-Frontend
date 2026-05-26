import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/data/repositories/admin/admin_repository.dart';
import 'package:travery_frontend/data/repositories/authentication/auth_repository.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/ui/core/auth_guard.dart';
import 'package:travery_frontend/ui/admin/view/admin_main_screen.dart';
import 'package:travery_frontend/ui/admin/view/view_detail_account_screen.dart';
import 'package:travery_frontend/ui/admin/view_model/view_detail_account_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/confirm_password_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/forgot_password_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/register_view_model.dart';
import 'package:travery_frontend/ui/coordinator/view/coordinator_main_screen.dart';
import 'package:travery_frontend/ui/guide/home/guide_home_screen.dart';
import 'package:travery_frontend/ui/guide/mission/mission_detail_screen.dart';
import 'package:travery_frontend/ui/guide/mission/view_models/mission_detail_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/check_in/check_in_screen.dart';
import 'package:travery_frontend/ui/guide/mission/check_in/view_models/check_in_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/tour_progress/tour_progress_screen.dart';
import 'package:travery_frontend/ui/guide/mission/tour_progress/view_models/tour_progress_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/our_completed_screen.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/view_models/our_completed_view_model.dart';
import 'package:travery_frontend/ui/user/home/home_screen.dart';
import 'package:travery_frontend/ui/user/home/view_models/home_view_model.dart';
import 'package:travery_frontend/ui/user/tour/list/tour_list_screen.dart';
import 'package:travery_frontend/ui/user/tour/list/view_models/tour_list_view_model.dart';
import 'package:travery_frontend/ui/user/tour/detail/tour_detail_screen.dart';
import 'package:travery_frontend/ui/user/tour/detail/view_models/tour_detail_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_input/booking_input_screen.dart';
import 'package:travery_frontend/ui/user/tour/booking_input/view_models/booking_input_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_review/booking_review_screen.dart';
import 'package:travery_frontend/ui/user/tour/booking_review/view_models/booking_review_view_model.dart';
import 'package:travery_frontend/ui/user/tour/payment/vnpay_payment_screen.dart';
import 'package:travery_frontend/ui/user/tour/payment/view_models/vnpay_payment_view_model.dart';
import 'package:travery_frontend/ui/user/tour/payment_result/payment_result_screen.dart';
import 'package:travery_frontend/ui/user/tour/payment_result/view_models/payment_result_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_success/booking_success_screen.dart';
import 'package:travery_frontend/ui/user/tour/booking_list/booking_list_screen.dart';
import 'package:travery_frontend/ui/user/tour/booking_list/view_models/booking_list_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_detail/booking_detail_screen.dart';
import 'package:travery_frontend/ui/user/tour/booking_detail/view_models/booking_detail_view_model.dart';
import 'package:travery_frontend/ui/user/tour/cancel/cancel_booking_screen.dart';
import 'package:travery_frontend/ui/user/tour/cancel/view_models/cancel_booking_view_model.dart';
import 'package:travery_frontend/ui/user/tour/cancel_success/cancel_success_screen.dart';
import 'package:travery_frontend/ui/user/widgets/user_bottom_nav.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_template/coordinator_tour_template.dart';
import 'package:travery_frontend/ui/admin/view_model/dashboard_view_model.dart';
import 'package:travery_frontend/ui/admin/view_model/account_management_view_model.dart';
import 'package:travery_frontend/ui/admin/view_model/create_account_view_model.dart';
import 'package:travery_frontend/ui/authentication/view/login_screen.dart';
import 'package:travery_frontend/ui/authentication/view/register_screen.dart';
import 'package:travery_frontend/ui/authentication/view/otp_verification_screen.dart';
import 'package:travery_frontend/ui/authentication/view/forgot_password_screen.dart';
import 'package:travery_frontend/ui/authentication/view/confirm_password_screen.dart';
import 'package:travery_frontend/ui/authentication/widgets/role_selection_screen.dart';
import 'package:travery_frontend/ui/authentication/view_models/login_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/otp_verification_view_model.dart';
import 'package:travery_frontend/ui/admin/view/create_account_screen.dart';
import 'package:travery_frontend/ui/admin/view/account_management_screen.dart';
import 'package:travery_frontend/ui/admin/view/tour_management_screen.dart';
import 'package:travery_frontend/ui/admin/view/vehicle_management_screen.dart';
import 'package:travery_frontend/ui/admin/view/dashboard_screen.dart';
import 'package:travery_frontend/ui/admin/view/hotel_management_screen.dart';
import 'package:travery_frontend/data/services/api/model/booking/create_tour_booking_response/create_tour_booking_response.dart';
import '../ui/admin/view/create_hotel_screen.dart';
import '../ui/admin/view/update_hotel_screen.dart';
import '../ui/admin/view/create_vehicle_screen.dart';
import '../ui/admin/view/update_vehicle_screen.dart';
import 'package:travery_frontend/ui/coordinator/view/coordinator_view_tour_list_screen.dart';
import 'package:travery_frontend/ui/coordinator/view_models/coordinator_tour_list_view_model.dart';
import 'package:travery_frontend/ui/coordinator/view/coordinator_view_tour_screen.dart';
import 'package:travery_frontend/ui/coordinator/view/coordinator_view_tour_template_list_screen.dart';
import 'package:travery_frontend/ui/coordinator/view_models/coordinator_tour_template_list_view_model.dart';
import 'package:travery_frontend/ui/coordinator/view/coordinator_create_tour_template_screen.dart';
import 'package:travery_frontend/ui/coordinator/view/coordinator_create_tour_screen.dart';
import 'package:travery_frontend/ui/coordinator/view_models/coordinator_create_tour_view_model.dart';
import 'package:travery_frontend/ui/coordinator/view/coordinator_view_template_screen.dart';
import 'routes.dart';

GoRouter appRouter(AuthRepository authRepository) {
  return GoRouter(
    initialLocation: Routes.login,
    debugLogDiagnostics: true,
    routes: [
      // --- AUTHENTICATION ROUTES ---
      GoRoute(
        path: Routes.login,
        builder: (context, state) => LoginScreen(
          viewModel: LoginViewModel(
            authRepository: context.read<AuthRepository>(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.roleSelection,
        builder: (context, state) => const RoleSelectionScreen(),
      ),
      GoRoute(
        path: Routes.register,
        builder: (context, state) => RegisterScreen(
          viewModel: RegisterViewModel(
            authRepository: context.read<AuthRepository>(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.otp,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final email = extra['email'] as String;
          final password = extra['password'] as String?;
          final confirmPassword = extra['confirmPassword'] as String?;

          return OtpVerificationScreen(
            viewModel: OtpVerificationViewModel(
              authRepository: context.read<AuthRepository>(),
            ),
            email: email,
            password: password,
            confirmPassword: confirmPassword,
          );
        },
      ),
      GoRoute(
        path: Routes.forgotPassword,
        builder: (context, state) => ForgotPasswordScreen(
          viewModel: ForgotPasswordViewModel(
            authRepository: context.read<AuthRepository>(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.confirmPassword,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final email = extra['email'] as String;
          final otp = extra['otp'] as String;

          return ConfirmPasswordScreen(
            viewModel: ConfirmPasswordViewModel(
              authRepository: context.read<AuthRepository>(),
            ),
            email: email,
            otp: otp,
          );
        },
      ),

      // --- COORDINATOR ROUTES ---
      GoRoute(
        path: Routes.coordinatorMain,
        builder: (context, state) => ChangeNotifierProvider(
          create: (context) => CoordinatorTourListViewModel(
            coordinatorRepository: context.read<CoordinatorRepository>(),
          ),
          child: const CoordinatorMainScreen(),
        ),
      ),
      GoRoute(
        path: Routes.coordinatorHome,
        builder: (context, state) => CoordinatorTourListScreen(
          viewModel: CoordinatorTourListViewModel(
            coordinatorRepository: context.read<CoordinatorRepository>(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.coordinatorTourDetail,
        builder: (context, state) {
          final tour = state.extra as CoordinatorTour;
          return CoordinatorViewTourScreen(tour: tour);
        },
      ),
      GoRoute(
        path: Routes.coordinatorTourTemplateList,
        builder: (context, state) => CoordinatorViewTourTemplateListScreen(
          viewModel: CoordinatorTourTemplateListViewModel(
            coordinatorRepository: context.read<CoordinatorRepository>(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.coordinatorCreateTourTemplate,
        builder: (context, state) =>
            const CoordinatorCreateTourTemplateScreen(),
      ),
      GoRoute(
        path: Routes.coordinatorCreateTour,
        builder: (context, state) {
          final template = state.extra as CoordinatorTourTemplate?;
          return CoordinatorCreateTourScreen(
            viewModel: context.read<CoordinatorCreateTourViewModel>(),
            tourId: template?.id ?? '',
            tourName: template?.name,
          );
        },
      ),
      GoRoute(
        path: Routes.coordinatorViewTemplate,
        builder: (context, state) {
          final template = state.extra as CoordinatorTourTemplate;
          return CoordinatorViewTemplateScreen(template: template);
        },
      ),

      // --- GUIDE ROUTES ---
      GoRoute(
        path: Routes.guideHome,
        builder: (context, state) => const GuideHomeScreen(),
      ),
      GoRoute(
        path: Routes.missionDetail,
        builder: (context, state) {
          final missionId = state.pathParameters['id'] ?? '';
          return MissionDetailScreen(missionId: missionId);
        },
      ),
      GoRoute(
        path: Routes.checkIn,
        builder: (context, state) {
          final missionId = state.pathParameters['id'] ?? '';
          return CheckInScreen(missionId: missionId);
        },
      ),
      GoRoute(
        path: Routes.tourProgress,
        builder: (context, state) {
          final missionId = state.pathParameters['id'] ?? '';
          return TourProgressScreen(missionId: missionId);
        },
      ),
      GoRoute(
        path: Routes.tourCompleted,
        builder: (context, state) {
          final missionId = state.pathParameters['id'] ?? '';
          return TourCompletedScreen(missionId: missionId);
        },
      ),

      // --- USER ROUTES ---
      GoRoute(
        path: Routes.tourHome,
        builder: (context, state) => const UserBottomNav(initialIndex: 0),
      ),
      GoRoute(
        path: Routes.tourList,
        builder: (context, state) {
          final keyword = state.uri.queryParameters['keyword'];
          final destinationId = state.uri.queryParameters['destinationId'];
          return TourListScreen(
            viewModel: context.read<TourListViewModel>(),
            keyword: keyword,
            destinationId: destinationId,
          );
        },
      ),
      GoRoute(
        path: Routes.tourDetail,
        builder: (context, state) {
          final tourId = state.pathParameters['id'] ?? '';
          return TourDetailScreen(
            viewModel: context.read<TourDetailViewModel>(),
            tourId: tourId,
          );
        },
      ),
      GoRoute(
        path: Routes.tourBooking,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final tourId = state.pathParameters['id'] ?? '';
          final instanceId = extra?['instanceId'] as String? ?? '';
          final tourName = extra?['tourName'] as String? ?? '';
          final pricePerAdult = (extra?['pricePerAdult'] as num?)?.toDouble();
          final pricePerChild = (extra?['pricePerChild'] as num?)?.toDouble();
          return BookingInputScreen(
            viewModel: context.read<BookingInputViewModel>(),
            tourId: tourId,
            instanceId: instanceId,
            tourName: tourName,
            pricePerAdult: pricePerAdult,
            pricePerChild: pricePerChild,
          );
        },
      ),
      GoRoute(
        path: Routes.tourBookingReview,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return BookingReviewScreen(
            viewModel: context.read<BookingReviewViewModel>(),
            tourId: extra['tourId'] as String,
            instanceId: extra['instanceId'] as String,
            tourName: extra['tourName'] as String,
            tourImageUrl: extra['tourImageUrl'] as String?,
            members: extra['members'] as List<Map<String, dynamic>>,
            adultCount: extra['adultCount'] as int,
            childCount: extra['childCount'] as int,
            pricePerAdult: extra['pricePerAdult'] as double,
            pricePerChild: extra['pricePerChild'] as double,
            specialRequests: extra['specialRequests'] as String,
            startDate: extra['startDate'] as String,
            endDate: extra['endDate'] as String,
          );
        },
      ),
      GoRoute(
        path: Routes.vnpayPayment,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return VNPayPaymentScreen(
            viewModel: context.read<VNPayPaymentViewModel>(),
            bookingId: extra['bookingId'] as String,
            paymentUrl: extra['paymentUrl'] as String,
            transactionId: extra['transactionId'] as String,
            amount: extra['amount'] as double,
            expiresAt: extra['expiresAt'] as String?,
            tourName: extra['tourName'] as String,
          );
        },
      ),
      GoRoute(
        path: Routes.paymentResult,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          return PaymentResultScreen(
            viewModel: context.read<PaymentResultViewModel>(),
            txnRef: extra?['txnRef'] as String?,
            deeplinkStatus: extra?['status'] as String?,
            responseCode: extra?['responseCode'] as String?,
            bookingId: extra?['bookingId'] as String?,
          );
        },
      ),
      GoRoute(
        path: Routes.bookingSuccess,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          return BookingSuccessScreen(
            bookingId: extra?['bookingId'] as String? ?? '',
            tourName: extra?['tourName'] as String? ?? '',
            startDate: extra?['startDate'] as String? ?? '',
            totalPrice: extra?['totalPrice'] as double? ?? 0,
            adultCount: extra?['adultCount'] as int? ?? 0,
            childCount: extra?['childCount'] as int? ?? 0,
          );
        },
      ),
      GoRoute(
        path: Routes.bookingDetailScreen,
        builder: (context, state) {
          final bookingId = state.pathParameters['id'] ?? '';
          return BookingDetailScreen(
            viewModel: context.read<BookingDetailViewModel>(),
            bookingId: bookingId,
          );
        },
      ),
      GoRoute(
        path: Routes.cancelConfirmation,
        builder: (context, state) {
          final bookingId = state.pathParameters['id'] ?? '';
          return CancelBookingScreen(
            viewModel: context.read<CancelBookingViewModel>(),
            bookingId: bookingId,
          );
        },
      ),
      GoRoute(
        path: Routes.cancellationSuccess,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          return CancelSuccessScreen(
            bookingId: extra?['bookingId'] as String? ?? '',
            tourName: extra?['tourName'] as String? ?? '',
            refundAmount: extra?['refundAmount'] as double? ?? 0,
            refundPercentage: extra?['refundPercentage'] as double? ?? 0,
          );
        },
      ),

      // --- ADMIN ROUTES ---
      GoRoute(
        path: Routes.adminMain,
        builder: (context, state) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => DashboardViewModel(
                adminRepository: context.read<AdminRepository>(),
              ),
            ),
            ChangeNotifierProvider(
              create: (context) => AccountManagementViewModel(
                adminRepository: context.read<AdminRepository>(),
              ),
            ),
            ChangeNotifierProvider(
              create: (context) => CreateAccountViewModel(
                adminRepository: context.read<AdminRepository>(),
              ),
            ),
          ],
          child: const AdminMainScreen(),
        ),
      ),
      GoRoute(
        path: Routes.adminDashboard,
        builder: (context, state) => ChangeNotifierProvider(
          create: (context) => DashboardViewModel(
            adminRepository: context.read<AdminRepository>(),
          ),
          child: const DashboardScreen(),
        ),
      ),
      GoRoute(
        path: Routes.adminCreateAccount,
        builder: (context, state) => ChangeNotifierProvider(
          create: (context) => CreateAccountViewModel(
            adminRepository: context.read<AdminRepository>(),
          ),
          child: const CreateAccountScreen(),
        ),
      ),
      GoRoute(
        path: Routes.adminCreateHotel,
        builder: (context, state) => CreateHotelScreen(),
      ),
      GoRoute(
        path: Routes.adminHotelManagement,
        builder: (context, state) => HotelManagementScreen(),
      ),
      GoRoute(
        path: Routes.adminCreateHotel,
        builder: (context, state) => CreateHotelScreen(),
      ),
      GoRoute(
        path: Routes.adminCreateVehicle,
        builder: (context, state) => CreateVehicleScreen(),
      ),
      GoRoute(
        path: Routes.adminAccountManagement,
        builder: (context, state) => ChangeNotifierProvider(
          create: (context) => AccountManagementViewModel(
            adminRepository: context.read<AdminRepository>(),
          ),
          child: const AccountManagementScreen(),
        ),
      ),
      GoRoute(
        path: Routes.adminViewDetailAccountWithId(':id'),
        builder: (context, state) {
          final accountId = state.pathParameters['id']!;
          final viewModel = ViewDetailAccountViewModel(
            adminRepository: context.read<AdminRepository>(),
          );
          return ViewDetailAccountScreen(
            viewModel: viewModel,
            accountId: accountId,
          );
        },
      ),
      GoRoute(
        path: Routes.adminCreateHotel,
        builder: (context, state) => CreateHotelScreen(),
      ),
      GoRoute(
        path: Routes.adminVehicleManagement,
        builder: (context, state) => const VehicleManagementScreen(),
      ),
      GoRoute(
        path: Routes.adminCreateVehicle,
        builder: (context, state) => CreateVehicleScreen(),
      ),
      GoRoute(
        path: Routes.adminTourManagement,
        builder: (context, state) => const TourManagementScreen(),
      ),
      GoRoute(
        path: Routes.adminVehicleManagement,
        builder: (context, state) => const VehicleManagementScreen(),
      ),
    ],
  );
}
