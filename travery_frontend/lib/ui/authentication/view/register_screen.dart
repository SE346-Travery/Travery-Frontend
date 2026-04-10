import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/utils/alert.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/auth_text_field.dart';
import 'widgets/auth_button.dart';
import 'package:travery_frontend/routing/routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  void _navigateToLogin(BuildContext context) {
    context.go(Routes.login);
  }

  GestureTapCallback? _handleRegister(BuildContext context) {
    final email = emailController.text;
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;
    final name = nameController.text;

    if (name.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập họ và tên');
      return null;
    }

    if (email.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập email');
      return null;
    }

    if (password.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập mật khẩu');
      return null;
    }

    if (password.length < 8) {
      Utils.showErrorNotification(context, 'Mật khẩu phải có ít nhất 8 ký tự');
      return null;
    }

    if (confirmPassword.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập lại mật khẩu');
      return null;
    }

    if (confirmPassword != password) {
      Utils.showErrorNotification(context, 'Mật khẩu không khớp');
      return null;
    }
    context.push(Routes.otp);
    return null;
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
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  context.pop();
                },
              ),

              Text(
                'Tạo tài khoản mới',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Bắt đầu hành trình khám phá thế giới cùng Travery',
                style: TextStyle(
                  fontSize: AppTextTheme.bodyLarge,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
              ),

              SizedBox(height: 24),

              AuthTextField(
                controller: nameController,
                title: 'Họ và tên',
                hintText: 'Nhập họ và tên của bạn',
                isPassword: false,
                prefixIcon: Icons.person,
              ),

              SizedBox(height: 16),

              AuthTextField(
                controller: emailController,
                title: 'Email',
                hintText: 'Nhập email của bạn',
                isPassword: false,
                prefixIcon: Icons.email,
              ),

              SizedBox(height: 16),

              AuthTextField(
                controller: passwordController,
                title: 'Mật khẩu',
                hintText: 'Nhập mật khẩu của bạn',
                isPassword: true,
                prefixIcon: Icons.lock,
              ),

              SizedBox(height: 16),

              AuthTextField(
                controller: confirmPasswordController,
                title: 'Xác nhận mật khẩu',
                hintText: 'Nhập lại mật khẩu của bạn',
                isPassword: true,
                prefixIcon: Icons.lock_reset,
              ),

              SizedBox(height: 24),

              AuthButton(
                title: 'Đăng ký',
                onPressed: () => _handleRegister(context),
              ),

              Spacer(flex: 1),

              SizedBox(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bạn đã có tài khoản? ',
                      style: TextStyle(
                        fontSize: AppTextTheme.bodyLarge,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    InkWell(
                      onTap: () => _navigateToLogin(context),
                      child: Text(
                        'Đăng nhập',
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
