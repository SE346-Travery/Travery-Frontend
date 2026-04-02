import 'package:flutter/material.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/auth_text_field.dart';
import 'widgets/auth_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  Navigator.pop(context);
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
                title: 'Họ và tên',
                hintText: 'Nhập họ và tên của bạn',
                isPassword: false,
                prefixIcon: Icons.person,
              ),

              SizedBox(height: 16),

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

              SizedBox(height: 16),

              AuthTextField(
                title: 'Xác nhận mật khẩu',
                hintText: 'Nhập lại mật khẩu của bạn',
                isPassword: true,
                prefixIcon: Icons.lock_reset,
              ),

              SizedBox(height: 24),

              AuthButton(title: 'Đăng ký', onPressed: () {}),

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
                      onTap: () {},
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
