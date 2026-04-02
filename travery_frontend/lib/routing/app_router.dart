import 'package:go_router/go_router.dart';
import '../ui/authentication/view/login_screen.dart';
import '../ui/authentication/view/register_screen.dart';
import '../ui/authentication/view/otp_verification_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
      GoRoute(path: '/register', builder: (context, state) => RegisterScreen()),
      GoRoute(
        path: '/otp',
        builder: (context, state) => OTPVerificationScreen(),
      ),
    ],
  );
}
