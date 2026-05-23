import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/routing/routes.dart';

class AuthGuard extends StatefulWidget {
  final Widget child;
  final VoidCallback? onAuthenticated;

  const AuthGuard({super.key, required this.child, this.onAuthenticated});

  @override
  State<AuthGuard> createState() => _AuthGuardState();
}

class _AuthGuardState extends State<AuthGuard> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    final storage = context.read<SecurityStorageService>();
    final isLoggedIn = await storage.isLoggedIn();

    if (!mounted) return;

    if (!isLoggedIn) {
      _showLoginPrompt();
    } else {
      setState(() => _isLoading = false);
      widget.onAuthenticated?.call();
    }
  }

  void _showLoginPrompt() {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (ctx) => _LoginPromptSheet(
        onLoginSuccess: () {
          Navigator.pop(ctx);
          setState(() => _isLoading = false);
          widget.onAuthenticated?.call();
        },
        onCancel: () {
          Navigator.pop(ctx);
          context.pop();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return widget.child;
  }
}

class _LoginPromptSheet extends StatelessWidget {
  final VoidCallback onLoginSuccess;
  final VoidCallback onCancel;

  const _LoginPromptSheet({
    required this.onLoginSuccess,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        24,
        16,
        24,
        MediaQuery.of(context).padding.bottom + 24,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 24),
          const Icon(Icons.lock_outline, size: 56, color: Colors.amber),
          const SizedBox(height: 16),
          const Text(
            'Vui lòng đăng nhập',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Bạn cần đăng nhập để đặt tour.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => context.push(Routes.login),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Đăng nhập',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: TextButton(onPressed: onCancel, child: const Text('Hủy')),
          ),
        ],
      ),
    );
  }
}
