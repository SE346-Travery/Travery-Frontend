import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart'; // Giả sử dùng Provider để inject
import 'routes.dart';

// Import các màn hình và viewmodel
import '../ui/authentication/view/login_screen.dart';
import '../ui/authentication/view/register_screen.dart';
import '../ui/authentication/view/otp_verification_screen.dart';
import '../ui/authentication/view/forgot_password_screen.dart';
import '../ui/authentication/view/confirm_password_screen.dart';
import '../ui/authentication/view_models/login_view_model.dart';
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
        viewModel: LoginViewModel(authRepository: context.read<AuthRepository>()),
      ),
    ),
    GoRoute(
      path: Routes.register,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: Routes.otp,
      builder: (context, state) => OtpVerificationScreen(),
    ),
    GoRoute(
      path: Routes.forgotPassword,
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: Routes.confirmPassword,
      builder: (context, state) => const ConfirmPasswordScreen(),
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