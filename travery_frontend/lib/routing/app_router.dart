import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/ui/authentication/view_models/confirm_password_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/forgot_password_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/register_view_model.dart';
import 'routes.dart';

// Import các màn hình và viewmodel
import '../ui/authentication/view/login_screen.dart';

import '../ui/authentication/view/register_screen.dart';
import '../ui/authentication/view/otp_verification_screen.dart';
import '../ui/authentication/view/forgot_password_screen.dart';
import '../ui/authentication/view/confirm_password_screen.dart';
import '../ui/authentication/view/test_home_screen.dart';
import '../ui/authentication/view_models/login_view_model.dart';
import '../ui/authentication/view_models/otp_verification_view_model.dart';

// User screens
import '../ui/user/home/view/home_screen.dart';
import '../ui/user/tour/tour_list/tour_list_screen.dart';
import '../ui/user/tour/tour_detail/tour_detail_screen.dart';
import '../ui/user/tour/tour_booking_input/tour_booking_input_screen.dart';
import '../ui/user/tour/tour_booking_input/tour_booking_review_screen.dart';
import '../ui/user/tour/payment/vnpay_payment_screen.dart';
import '../ui/user/tour/payment/booking_success_screen.dart';
import '../ui/user/tour/payment/booking_detail_screen.dart';
import '../ui/user/tour/payment/cancel_confirm_screen.dart';
import '../ui/user/tour/payment/widgets/cancel_success_screen.dart';
import '../ui/user/tour/view_models/tour_list_view_model.dart';
import '../ui/user/tour/view_models/tour_detail_view_model.dart';
import '../ui/user/tour/view_models/tour_booking_view_model.dart';
import '../../data/seed_models/booking_payment/booking_payment_model.dart';
import '../../data/seed_models/booking_detail/booking_detail_model.dart';

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

      // --- USER ROUTES ---
      GoRoute(
        path: Routes.home,
        builder: (context, state) => HomeScreen(
          viewModel: TourListViewModel(
            tourRepository: context.read<TourRepository>(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.tourList,
        builder: (context, state) => TourListScreen(
          viewModel: TourListViewModel(
            tourRepository: context.read<TourRepository>(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.tourDetail,
        builder: (context, state) {
          final tourId = state.pathParameters['id']!;
          return TourDetailScreen(
            viewModel: TourDetailViewModel(
              tourRepository: context.read<TourRepository>(),
            ),
            tourId: tourId,
          );
        },
      ),
      GoRoute(
        path: Routes.tourBooking,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final tourId = extra['tourId'] as String;
          final tourInstanceId = extra['tourInstanceId'] as String;
          return TourBookingScreen(
            viewModel: TourBookingViewModel(
              tourRepository: context.read<TourRepository>(),
            ),
            tourId: tourId,
            tourInstanceId: tourInstanceId,
          );
        },
      ),
      GoRoute(
        path: Routes.tourBookingReview,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return TourBookingReviewScreen(
            tour: extra['tour'],
            tourInstance: extra['tourInstance'],
            booking: extra['booking'],
          );
        },
      ),
      GoRoute(
        path: Routes.vnpayPayment,
        builder: (context, state) {
          final booking = state.extra as BookingPaymentModel;
          return VNPayPaymentScreen(booking: booking);
        },
      ),
      GoRoute(
        path: Routes.bookingSuccess,
        builder: (context, state) {
          final booking = state.extra as BookingPaymentModel;
          return BookingSuccessScreen(booking: booking);
        },
      ),
      GoRoute(
        path: Routes.bookingDetail,
        builder: (context, state) {
          final booking = state.extra as BookingDetailModel;
          return BookingDetailScreen(booking: booking);
        },
      ),
      GoRoute(
        path: '/cancel-booking',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return CancelConfirmScreen(
            bookingId: extra['bookingId'] as String,
            tourName: extra['tourName'] as String,
            originalPrice: extra['originalPrice'] as double,
            refundAmount: extra['refundAmount'] as double,
            refundPercentage: extra['refundPercentage'] as int,
            paymentMethod: extra['paymentMethod'] as String,
          );
        },
      ),
      GoRoute(
        path: '/cancel-success',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return CancelSuccessScreen(
            bookingId: extra['bookingId'] as String,
            refundAmount: extra['refundAmount'] as double,
            refundPercentage: extra['refundPercentage'] as int,
            paymentMethod: extra['paymentMethod'] as String,
          );
        },
      ),
    ],
  );
}
