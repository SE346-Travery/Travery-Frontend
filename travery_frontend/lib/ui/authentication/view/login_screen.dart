import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'widgets/auth_text_field.dart';
import 'widgets/auth_button.dart';
import 'package:travery_frontend/utils/alert.dart';
import 'package:travery_frontend/ui/authentication/view_models/login_view_model.dart';
import 'package:travery_frontend/routing/routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key, required this.viewModel});
  final LoginViewModel viewModel;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GestureTapCallback? _navigateToRegister(BuildContext context) {
    context.push(Routes.register);
    return null;
  }

  Future<void> _handleLogin(BuildContext context) async {
    final email = emailController.text;
    final password = passwordController.text;

    if (email.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập email');
      return;
    }

    if (password.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập mật khẩu');
      return;
    }

    if (password.length < 8) {
      Utils.showErrorNotification(context, 'Mật khẩu phải có ít nhất 8 ký tự');
      return;
    }

    final success = await viewModel.login(email, password);
    if (!context.mounted) return;

    if (success) {
      Utils.showSuccessNotification(context, 'Đăng nhập thành công');
      // TODO: navigate to home screen
    } else {
      Utils.showErrorNotification(context, viewModel.errorMessage ?? 'Đăng nhập thất bại');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Text(
                'Travery',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Chào mừng trở lại',
                style: TextStyle(
                  fontSize: AppTextTheme.headlineLarge,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Bắt đầu cuộc hành trình khám phá thế giới của riêng bạn.',
                style: TextStyle(
                  fontSize: AppTextTheme.bodyLarge,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
              ),

              SizedBox(height: 24),
              AuthTextField(
                title: 'Email',
                hintText: 'Nhập email của bạn',
                isPassword: false,
                prefixIcon: Icons.email,
                controller: emailController,
              ),

              SizedBox(height: 16),
              AuthTextField(
                title: 'Mật khẩu',
                hintText: 'Nhập mật khẩu của bạn',
                isPassword: true,
                prefixIcon: Icons.lock,
                controller: passwordController,
              ),

              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => context.push(Routes.forgotPassword),
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        color: AppColors.link,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),

              AuthButton(
                title: 'Đăng nhập',
                onPressed: () => _handleLogin(context),
              ),

              Spacer(flex: 1),

              SizedBox(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bạn chưa có tài khoản? ',
                      style: TextStyle(
                        fontSize: AppTextTheme.bodyLarge,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    InkWell(
                      onTap: () => _navigateToRegister(context),
                      child: Text(
                        'Đăng ký',
                        style: TextStyle(
                          fontSize: AppTextTheme.bodyLarge,
                          fontWeight: FontWeight.bold,
                          color: AppColors.link,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
