import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import 'package:flutter/services.dart';


class BookingInputField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const BookingInputField({
    super.key,
    required this.label,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.validator, 
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 6),
            child: Text(
              label.toUpperCase(),
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppColors.textSecondary,
              ),
            ),
          ),

        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: AppColors.textHint, fontSize: 14),
            fillColor: AppColors.inputBackground,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.primary, width: 1),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}

class PassengerStepper extends StatelessWidget {
  final String title;
  final String subtitle;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const PassengerStepper({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(99),
            border: Border.all(color: AppColors.inputBorder),
          ),
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              _buildStepBtn(
                Icons.remove,
                value > 0 ? AppColors.primary : AppColors.textHint,
                onDecrement,
              ),
              SizedBox(
                width: 40,
                child: Text(
                  value.toString().padLeft(2, '0'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              _buildStepBtn(
                Icons.add,
                AppColors.primary,
                onIncrement,
                isPrimary: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStepBtn(
    IconData icon,
    Color color,
    VoidCallback onTap, {
    bool isPrimary = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.primary : Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            if (!isPrimary)
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 4),
          ],
        ),
        child: Icon(icon, size: 20, color: isPrimary ? Colors.white : color),
      ),
    );
  }
}
