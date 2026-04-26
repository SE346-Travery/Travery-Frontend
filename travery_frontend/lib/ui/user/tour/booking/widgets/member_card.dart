import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/widgets/custom_text_field.dart';

class MemberCard extends StatefulWidget {
  final MemberInfo member;
  final void Function(String) onNameChanged;
  final void Function(String) onIdentityChanged;

  const MemberCard({
    super.key,
    required this.member,
    required this.onNameChanged,
    required this.onIdentityChanged,
  });

  @override
  State<MemberCard> createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {
  final _nameController = TextEditingController();
  final _identityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.member.fullName;
    _identityController.text = widget.member.identityNumber;
  }

  @override
  void didUpdateWidget(covariant MemberCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.member.index != widget.member.index) {
      _nameController.text = widget.member.fullName;
      _identityController.text = widget.member.identityNumber;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _identityController.dispose();
    super.dispose();
  }

  String _getMemberLabel() {
    return widget.member.type == MemberType.adult
        ? 'Người lớn ${widget.member.index}'
        : 'Trẻ em ${widget.member.index - widget.member.index + 1}';
  }

  String _getMemberTypeLabel() {
    return widget.member.type == MemberType.adult ? 'Người lớn' : 'Trẻ em';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.person,
                  color: AppColors.primary,
                  size: 20,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getMemberLabel(),
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      _getMemberTypeLabel(),
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          CustomTextField(
            controller: _nameController,
            label: 'Họ và tên',
            hint: 'Nhập họ và tên theo CCCD',
            textInputAction: TextInputAction.next,
            onChanged: widget.onNameChanged,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Vui lòng nhập họ và tên';
              }
              if (value.trim().length < 2) {
                return 'Họ và tên phải có ít nhất 2 ký tự';
              }
              if (!RegExp(r'^[a-zA-ZÀ-ỹ\s]+$').hasMatch(value.trim())) {
                return 'Họ và tên không được chứa số hoặc ký tự đặc biệt';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          CustomTextField(
            controller: _identityController,
            label: 'CCCD hoặc CMND',
            hint: 'Nhập số CCCD/CMND',
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            onChanged: widget.onIdentityChanged,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Vui lòng nhập CCCD/CMND';
              }
              final cleanNumber = value.replaceAll(' ', '');
              if (cleanNumber.length != 9 && cleanNumber.length != 12) {
                return 'CCCD phải có 9 hoặc 12 số';
              }
              if (!RegExp(r'^[0-9]+$').hasMatch(cleanNumber)) {
                return 'CCCD chỉ được chứa số';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
