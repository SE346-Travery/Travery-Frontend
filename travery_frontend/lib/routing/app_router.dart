import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart'; // Giả sử dùng Provider để inject
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
import '../data/repositories/auth_repository.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
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
          final password = extra['password'] as String;
          final confirmPassword = extra['confirmPassword'] as String;

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

      // --- MAIN APP ROUTES ---
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          /* HƯỚNG DẪN KHI CÓ VIEWMODEL/REPOSITORY MỚI:
        1. Lấy Repository cần thiết từ context.read<T>()
        2. Khởi tạo ViewModel và truyền Repository đó vào.
        3. Trả về Screen với ViewModel tương ứng.
        
        Ví dụ cho Hotel:
        final hotelRepo = context.read<HotelRepository>();
        return HotelScreen(viewModel: HotelViewModel(hotelRepo));
        */
          return const Placeholder(); // Thay bằng HomeScreen của bạn
        },
      ),
    ],
  );
}
