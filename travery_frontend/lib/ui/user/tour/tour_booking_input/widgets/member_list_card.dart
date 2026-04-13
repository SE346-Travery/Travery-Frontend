import 'package:flutter/material.dart';

import '../../../../../data/seed_models/tour_booking_member/tour_booking_member.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class MemberListCard extends StatelessWidget {
  final List<TourBookingMember> members;
  final Function(int index)? onEditMember;

  const MemberListCard({
    super.key,
    required this.members,
    this.onEditMember,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF131B2E).withOpacity(0.04),
            blurRadius: 32,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 16),
          ...members.asMap().entries.map(
                (entry) => Padding(
                  padding: EdgeInsets.only(bottom: entry.key < members.length - 1 ? 12 : 0),
                  child: _MemberItem(
                    member: entry.value,
                    index: entry.key,
                    onEdit: onEditMember != null ? () => onEditMember!(entry.key) : null,
                  ),
                ),
              ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const Icon(Icons.groups, size: 20, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(
          'Danh sách thành viên',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.bodyMedium, color: AppColors.primary),
        ),
      ],
    );
  }
}

class _MemberItem extends StatelessWidget {
  final TourBookingMember member;
  final int index;
  final VoidCallback? onEdit;

  const _MemberItem({required this.member, required this.index, this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F4FF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFC1C6D7).withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Thành viên ${(index + 1).toString().padLeft(2, '0')}',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.primary, letterSpacing: 1),
              ),
              if (onEdit != null)
                GestureDetector(
                  onTap: onEdit,
                  child: Text('Chỉnh sửa', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColors.primary)),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(member.fullName, style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w600, color: AppColors.textPrimary))),
              _buildMemberTypeBadge(),
            ],
          ),
          const SizedBox(height: 6),
          _buildIdentityRow(),
        ],
      ),
    );
  }

  Widget _buildMemberTypeBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.person, size: 12, color: AppColors.primary),
          const SizedBox(width: 4),
          Text(member.isChild ? 'Trẻ em' : 'Người lớn', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.primary)),
        ],
      ),
    );
  }

  Widget _buildIdentityRow() {
    final identityType = member.identityType?.name.toUpperCase() ?? 'CCCD';
    final identityNumber = member.identityNumber ?? '';

    return Row(
      children: [
        const Icon(Icons.badge, size: 14, color: AppColors.textSecondary),
        const SizedBox(width: 4),
        Text(
          '$identityType: ${identityNumber.isNotEmpty ? identityNumber : '---'}',
          style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary),
        ),
      ],
    );
  }
}
