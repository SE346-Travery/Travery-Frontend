import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';



class AppBarDefault extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final VoidCallback? onBack;

  const AppBarDefault({super.key, required this.title, this.showBack = true, this.onBack});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: Colors.black12,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: showBack
          ? IconButton(
              onPressed: onBack ?? () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: AppColors.primary),
            )
          : null,
      title: Text(title, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w800, fontSize: 16)),
      centerTitle: false,
      actions: const [SizedBox(width: 8)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
