import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/ui/authentication/view_models/confirm_password_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/forgot_password_view_model.dart';
import 'package:travery_frontend/ui/authentication/view_models/register_view_model.dart';
import 'routes.dart';

import '../ui/authentication/view/login_screen.dart';
import '../ui/authentication/view/register_screen.dart';
import '../ui/authentication/view/otp_verification_screen.dart';
import '../ui/authentication/view/forgot_password_screen.dart';
import '../ui/authentication/view/confirm_password_screen.dart';
import '../ui/authentication/view_models/login_view_model.dart';
import '../ui/authentication/view_models/otp_verification_view_model.dart';
import '../ui/user/home/tour_home_screen.dart';
import '../ui/user/tour/list/tour_list_screen.dart';
import '../ui/admin/view/create_account_screen.dart';
import '../ui/admin/view/account_management_screen.dart';
import '../ui/admin/view/tour_management_screen.dart';
import '../ui/admin/view/vehicle_management_screen.dart';
import '../ui/admin/view/dashboard_screen.dart';
import '../ui/admin/view/hotel_management_screen.dart';

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

      // --- USER ROUTES ---

      // --- ADMIN ROUTES ---
      GoRoute(
        path: Routes.adminDashboard,
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: Routes.adminCreateAccount,
        builder: (context, state) => CreateAccountScreen(),
      ),
      GoRoute(
        path: Routes.adminAccountManagement,
        builder: (context, state) => const AccountManagementScreen(),
      ),
      GoRoute(
        path: Routes.adminHotelManagement,
        builder: (context, state) => const HotelManagementScreen(),
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
