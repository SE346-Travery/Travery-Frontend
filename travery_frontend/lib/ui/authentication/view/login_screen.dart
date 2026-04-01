import 'package:flutter/material.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/auth_text_field.dart';
import 'widgets/auth_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 48),
              Text(
                'Travery',
                style: TextStyle(
                  fontSize: AppTextTheme.displayLarge,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Chào mừng',
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
              ),

              SizedBox(height: 16),
              AuthTextField(
                title: 'Mật khẩu',
                hintText: 'Nhập mật khẩu của bạn',
                isPassword: true,
                prefixIcon: Icons.lock,
              ),

              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
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
              AuthButton(title: 'Đăng nhập', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
