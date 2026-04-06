import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';

import 'package:travery_frontend/utils/alert.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/auth_button.dart';
import '../view_models/otp_verification_view_model.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({
    super.key,
    required this.viewModel,
    required this.email,
    required this.nextRoute,
  });

  final OtpVerificationViewModel viewModel;
  final String email;
  final String nextRoute;

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  Future<void> _handleVerifyOtp(BuildContext context) async {
    final otp = _otpController.text.trim();
    if (otp.length == 6) {
      final result = await widget.viewModel.verifyOtp(widget.email, otp);
      if (!context.mounted) return;

      try {
        if (result) {
          Utils.showSuccessNotification(context, 'Xác thực OTP thành công');
          context.go(widget.nextRoute);
        }
      } catch (e) {
        Utils.showErrorNotification(
          context,
          widget.viewModel.errorMessage ?? 'Xác thực OTP thất bại',
        );
      }
    } else {
      Utils.showErrorNotification(context, 'Vui lòng nhập đủ 6 số OTP');
    }
  }

  Future<void> _handleResendOtp(BuildContext context) async {
    final result = await widget.viewModel.resendOtp(widget.email);
    if (!context.mounted) return;

    try {
      if (result) {
        Utils.showSuccessNotification(context, 'Đã gửi lại mã OTP');
      }
    } catch (e) {
      Utils.showErrorNotification(
        context,
        widget.viewModel.errorMessage ?? 'Gửi lại OTP thất bại',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
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
                          'Xác thực OTP',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Nhập mã OTP đã được gửi đến email:\n${widget.email}',
                          style: TextStyle(
                            fontSize: AppTextTheme.bodyLarge,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textSecondary,
                          ),
                        ),

                        SizedBox(height: 24),

                        Center(
                          child: Pinput(
                            controller: _otpController,
                            length: 6,
                            keyboardType: TextInputType.number,
                            pinAnimationType: PinAnimationType.fade,
                            defaultPinTheme: PinTheme(
                              width: 56,
                              height: 56,
                              textStyle: TextStyle(
                                fontSize: AppTextTheme.headlineLarge,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.inputBackground,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: AppColors.inputBorder),
                              ),
                            ),
                            focusedPinTheme: PinTheme(
                              width: 56,
                              height: 56,
                              textStyle: TextStyle(
                                fontSize: AppTextTheme.headlineLarge,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.inputBackground,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: AppColors.inputBorderFocused),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 24),

                        AuthButton(
                          title: 'Xác thực',
                          onPressed: () => _handleVerifyOtp(context),
                        ),

                        Spacer(flex: 1),

                        SizedBox(
                          height: 48,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Bạn chưa nhận được mã? ',
                                style: TextStyle(
                                  fontSize: AppTextTheme.bodyLarge,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              InkWell(
                                onTap: () => _handleResendOtp(context),
                                child: Text(
                                  'Gửi lại mã',
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
              ),
            );
          },
        ),
      ),
    );
  }
}
