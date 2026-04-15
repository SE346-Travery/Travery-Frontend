import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class ReservationTimer extends StatefulWidget {
  final int totalSeconds;
  final VoidCallback? onExpired;
  final TextStyle? textStyle;

  const ReservationTimer({
    super.key,
    required this.totalSeconds,
    this.onExpired,
    this.textStyle,
  });

  @override
  State<ReservationTimer> createState() => _ReservationTimerState();
}

class _ReservationTimerState extends State<ReservationTimer> {
  late int _remainingSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.totalSeconds;
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() => _remainingSeconds--);
      } else {
        timer.cancel();
        widget.onExpired?.call();
      }
    });
  }

  String get formattedTime {
    final minutes = _remainingSeconds ~/ 60;
    final seconds = _remainingSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  bool get isExpired => _remainingSeconds <= 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isExpired ? AppColors.error.withOpacity(0.1) : AppColors.warning.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(isExpired ? Icons.warning : Icons.schedule, size: 18, color: isExpired ? AppColors.error : AppColors.warning),
          const SizedBox(width: 6),
          Text(
            isExpired ? 'Đã hết hạn' : 'Giữ chỗ trong $formattedTime',
            style: widget.textStyle ?? TextStyle(fontSize: AppTextTheme.bodySmall, fontWeight: FontWeight.w500, color: isExpired ? AppColors.error : AppColors.textPrimary),
          ),
        ],
      ),
    );
  }
}
