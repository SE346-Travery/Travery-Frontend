import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/utils/alert.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/auth_button.dart';
import 'widgets/auth_text_field.dart';

class ConfirmPasswordScreen extends StatefulWidget {
  const ConfirmPasswordScreen({super.key});

  @override
  State<ConfirmPasswordScreen> createState() => _ConfirmPasswordScreenState();
}

class _ConfirmPasswordScreenState extends State<ConfirmPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  GestureTapCallback? _handleConfirm(BuildContext context) {
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (password.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập mật khẩu');
      return null;
    }

    if (password.length < 8) {
      Utils.showErrorNotification(
        context,
        'Mật khẩu phải có ít nhất 8 kí tự',
      );
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

    // TODO: Gọi API đặt lại mật khẩu
    Utils.showSuccessNotification(context, 'Mật khẩu đã được cập nhật thành công');
    context.go(Routes.login);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),

              // Nút back
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),

              const SizedBox(height: 32),

              // Tiêu đề
              Text(
                'Tạo mật khẩu mới',
                style: TextStyle(
                  fontSize: AppTextTheme.headlineLarge,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),

              const SizedBox(height: 8),

              // Mô tả
              Text(
                'Vui lòng xác nhận mật khẩu mới. Đảm bảo mật khẩu của bạn có 8 kí tự',
                style: TextStyle(
                  fontSize: AppTextTheme.bodyLarge,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
              ),

              const SizedBox(height: 32),

              // Ô nhập mật khẩu
              AuthTextField(
                controller: _passwordController,
                title: 'Mật khẩu',
                hintText: '••••••••',
                isPassword: true,
                prefixIcon: Icons.lock_outline,
              ),

              const SizedBox(height: 16),

              // Ô xác nhận mật khẩu
              AuthTextField(
                controller: _confirmPasswordController,
                title: 'Xác nhận mật khẩu',
                hintText: '••••••••',
                isPassword: true,
                prefixIcon: Icons.lock_reset,
              ),

              const SizedBox(height: 24),

              // Nút xác nhận
              AuthButton(
                title: 'Xác nhận',
                onPressed: () => _handleConfirm(context),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
