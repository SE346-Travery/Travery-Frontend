import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class BookingReviewPolicyCheckbox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const BookingReviewPolicyCheckbox({
    super.key,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<BookingReviewPolicyCheckbox> createState() =>
      _BookingReviewPolicyCheckboxState();
}

class _BookingReviewPolicyCheckboxState
    extends State<BookingReviewPolicyCheckbox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: Checkbox(
            value: _isChecked,
            onChanged: (value) {
              setState(() => _isChecked = value ?? false);
              widget.onChanged(_isChecked);
            },
            activeColor: AppColors.primary,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text.rich(
            const TextSpan(
              text: 'Tôi đã đọc và đồng ý với các ',
              style: TextStyle(fontSize: 11, color: AppColors.textSecondary),
              children: [
                TextSpan(
                  text: 'Điều khoản sử dụng',
                  style: TextStyle(
                    color: AppColors.link,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' và '),
                TextSpan(
                  text: 'Chính sách hoàn hủy',
                  style: TextStyle(
                    color: AppColors.link,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' của Travery.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
