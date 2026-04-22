import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/data/services/cancel/cancel_service_mock.dart';
import 'package:travery_frontend/data/services/cancellation/cancellation_service_mock.dart';
import 'package:travery_frontend/ui/authentication/view_models/confirm_password_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/forgot_password_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/register_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancel_confirmation/cancel_confirmation_screen.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancel_confirmation/view_models/cancel_confirmation_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancellation_success/cancellation_success_screen.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancellation_success/view_models/cancellation_success_view_model.dart';
import 'routes.dart';

import '../ui/authentication/view/login_screen.dart';
import '../ui/authentication/view/register_screen.dart';
import '../ui/authentication/view/otp_verification_screen.dart';
import '../ui/authentication/view/forgot_password_screen.dart';
import '../ui/authentication/view/confirm_password_screen.dart';
import '../ui/authentication/view/test_home_screen.dart';
import '../ui/authentication/view_models/login_view_model.dart';
import '../ui/authentication/view_models/otp_verification_view_model.dart';
import '../ui/user/home/tour_home_screen.dart';
import '../ui/user/tour/list/tour_list_screen.dart';
import '../ui/user/tour/detail/tour_detail_screen.dart';
import '../ui/user/tour/booking/booking_screen.dart';
import '../ui/user/tour/booking/review/booking_review_screen.dart';
import '../ui/user/tour/booking/payment/payment_screen.dart';
import '../ui/user/tour/booking/payment/booking_success_screen.dart';
import '../ui/user/tour/booking/booking_detail/booking_detail_screen.dart';


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
      GoRoute(
        path: Routes.testHome,
        builder: (context, state) => TestHomeScreen(),
      ),
      GoRoute(
        path: Routes.tourHome,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.tourList,
        builder: (context, state) => const TourListScreen(),
      ),
      GoRoute(
        path: Routes.tourDetail,
        builder: (context, state) {
          final tourId = state.pathParameters['id'];
          return TourDetailScreen(tourId: tourId);
        },
      ),
      GoRoute(
        path: Routes.tourBooking,
        builder: (context, state) => const BookingScreen(),
      ),
      GoRoute(
        path: Routes.tourBookingReview,
        builder: (context, state) => const BookingReviewScreen(),
      ),
      GoRoute(
        path: Routes.vnpayPayment,
        builder: (context, state) => const PaymentScreen(),
      ),
      GoRoute(
        path: Routes.bookingSuccess,
        builder: (context, state) => const BookingSuccessScreen(),
      ),
      GoRoute(
        path: Routes.bookingDetail,
        builder: (context, state) {
          final bookingId = state.pathParameters['id'] ?? '';
          return BookingDetailScreen(bookingId: bookingId);
        },
      ),
      GoRoute(
        path: Routes.cancelConfirmation,
        builder: (context, state) {
          final bookingId = state.pathParameters['id'] ?? '';
          return CancelConfirmationScreen(
            bookingId: bookingId,
            viewModel: CancelConfirmationViewModel(
              cancelService: CancelServiceMock(),
            ),
          );
        },
      ),
      GoRoute(
        path: Routes.cancellationSuccess,
        builder: (context, state) {
          final bookingId = state.pathParameters['id'] ?? '';
          return CancellationSuccessScreen(
            bookingId: bookingId,
            viewModel: CancellationSuccessViewModel(
              cancellationService: CancellationServiceMock(),
            ),
          );
        },
      ),

      // --- USER ROUTES ---
    ],
  );
}
