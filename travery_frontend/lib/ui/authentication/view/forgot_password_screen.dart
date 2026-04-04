import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/utils/alert.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/auth_button.dart';
import 'widgets/auth_text_field.dart';
import '../view_models/forgot_password_view_model.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key, required this.viewModel});

  final ForgotPasswordViewModel viewModel;

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _contactController = TextEditingController();

  @override
  void dispose() {
    _contactController.dispose();
    super.dispose();
  }

  Future<void> _handleSendRequest(BuildContext context) async {
    final contact = _contactController.text.trim();

    if (contact.isEmpty) {
      Utils.showErrorNotification(
        context,
        'Vui lòng nhập email hoặc số điện thoại',
      );
      return;
    }

    final result = await widget.viewModel.forgotPassword(contact);
    if (!context.mounted) return;
    
    try {
      if (result) {
        Utils.showSuccessNotification(
          context,
          'Đã gửi yêu cầu. Vui lòng kiểm tra email hoặc điện thoại của bạn.',
        );
        context.push(Routes.otp, extra: contact);
      }
    } catch (e) {
      Utils.showErrorNotification(context, widget.viewModel.errorMessage ?? 'Gửi yêu cầu thất bại');
    }
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
              IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => context.pop()),

              const SizedBox(height: 48),

              // Icon khóa
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.lock_reset_rounded,
                  size: 32,
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(height: 32),

              // Tiêu đề
              Text(
                'Quên mật khẩu?',
                style: TextStyle(
                  fontSize: AppTextTheme.headlineLarge,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),

              const SizedBox(height: 8),

              // Mô tả
              Text(
                'Đừng lo lắng, hãy nhập email hoặc số điện thoại để nhận mã OTP khôi phục.',
                style: TextStyle(
                  fontSize: AppTextTheme.bodyLarge,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
              ),

              const SizedBox(height: 32),

              // Ô nhập email / số điện thoại
              AuthTextField(
                controller: _contactController,
                title: 'EMAIL / SỐ ĐIỆN THOẠI',
                hintText: 'travery@example.com',
                isPassword: false,
                prefixIcon: Icons.email_outlined,
              ),

              const SizedBox(height: 24),

              // Nút gửi yêu cầu
              AuthButton(
                title: 'Gửi yêu cầu',
                onPressed: () => _handleSendRequest(context),
              ),

              const SizedBox(height: 24),

              // Divider "HOẶC"
              Row(
                children: [
                  const Expanded(child: Divider(color: AppColors.inputBorder)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'HOẶC',
                      style: TextStyle(
                        fontSize: AppTextTheme.bodySmall,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textSecondary,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  const Expanded(child: Divider(color: AppColors.inputBorder)),
                ],
              ),

              const SizedBox(height: 16),

              // Link Quay lại Đăng nhập
              Center(
                child: InkWell(
                  onTap: () => context.go(Routes.login),
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: Text(
                      'Quay lại Đăng nhập',
                      style: TextStyle(
                        fontSize: AppTextTheme.bodyLarge,
                        fontWeight: FontWeight.bold,
                        color: AppColors.link,
                      ),
                    ),
                  ),
                ),
              ),

              const Spacer(),

              // Ghi chú phía dưới
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Center(
                  child: Text(
                    'Chúng tôi sẽ gửi một liên kết đặt lại mật khẩu hoặc mã OTP trực tiếp đến thông tin bạn đã cung cấp.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: AppTextTheme.bodySmall,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textHint,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
