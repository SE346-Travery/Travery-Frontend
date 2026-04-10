import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/utils/alert.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/auth_text_field.dart';
import 'widgets/auth_button.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/authentication/view_models/register_view_model.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key, required this.viewModel});
  final RegisterViewModel viewModel;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.viewModel.register.addListener(_onRegisterResult);
  }

  @override
  void didUpdateWidget(covariant RegisterScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.register.removeListener(_onRegisterResult);
    widget.viewModel.register.addListener(_onRegisterResult);
  }

  @override
  void dispose() {
    widget.viewModel.register.removeListener(_onRegisterResult);
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  void _navigateToLogin() {
    context.go(Routes.login);
  }

  void _onRegisterResult() {
    if (widget.viewModel.register.completed) {
      widget.viewModel.register.clearResult();
      context.push(Routes.otp, extra: {'email': emailController.text});
    }
    if (widget.viewModel.register.error) {
      widget.viewModel.register.clearResult();
      Utils.showErrorNotification(
        context,
        widget.viewModel.register.error.toString(),
      );
    }
  }

  void _handleRegister() {
    final email = emailController.text;
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;
    final fullName = nameController.text;

    if (fullName.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập họ và tên');
      return;
    }

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

    if (confirmPassword.isEmpty) {
      Utils.showErrorNotification(context, 'Vui lòng nhập lại mật khẩu');
      return;
    }

    if (confirmPassword != password) {
      Utils.showErrorNotification(context, 'Mật khẩu không khớp');
      return;
    }

    widget.viewModel.register.execute((
      email,
      password,
      confirmPassword,
      fullName,
    ));
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
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => context.pop(),
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
                          onPressed: _handleRegister,
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
                                onTap: _navigateToLogin,
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
              ),
            );
          },
        ),
      ),
    );
  }
}
