import 'dart:async';
import 'package:flutter/material.dart';

class PaymentCountdown extends StatefulWidget {
  final DateTime createdAt;
  final VoidCallback onTimerEnd;

  const PaymentCountdown({
    super.key,
    required this.createdAt,
    required this.onTimerEnd,
  });

  @override
  State<PaymentCountdown> createState() => _PaymentCountdownState();
}

class _PaymentCountdownState extends State<PaymentCountdown> {
  late Timer _timer;
  Duration _timeLeft = const Duration(minutes: 15);

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    final expiryTime = widget.createdAt.add(const Duration(minutes: 15));

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      setState(() {
        _timeLeft = expiryTime.difference(now);
      });

      if (_timeLeft.isNegative || _timeLeft.inSeconds <= 0) {
        _timer.cancel();
        widget.onTimerEnd();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_timeLeft.isNegative) return const SizedBox.shrink();

    String minutes = _timeLeft.inMinutes.toString().padLeft(2, '0');
    String seconds = (_timeLeft.inSeconds % 60).toString().padLeft(2, '0');

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF2C94C).withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFF2C94C).withOpacity(0.2)),
      ),
      child: Row(
        children: [
          const Icon(Icons.timer, color: Color(0xFFD4A017), size: 28),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hoàn tất thanh toán trong",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8B690E),
                ),
              ),
              Text(
                "$minutes:$seconds",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD4A017),
                ),
              ),
            ],
          ),
          const Spacer(),
          Chip(
            label: const Text(
              "GIỮ CHỖ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: const Color(0xFFF2C94C),
            visualDensity: VisualDensity.compact,
          ),
        ],
      ),
    );
  }
}
