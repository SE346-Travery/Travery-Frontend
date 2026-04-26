import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';

class BookingReviewMemberItem extends StatelessWidget {
  final MemberInfo member;

  const BookingReviewMemberItem({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    final isAdult = member.type == MemberType.adult;
    final memberLabel = isAdult ? 'NGƯỜI LỚN' : 'TRẺ EM';
    final memberIcon = isAdult ? Icons.person : Icons.child_care;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.inputBackground.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'THÀNH VIÊN ${member.index.toString().padLeft(2, '0')}',
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 9,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                member.fullName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: AppColors.textPrimary,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Icon(memberIcon, size: 10, color: AppColors.primary),
                    const SizedBox(width: 3),
                    Text(
                      memberLabel,
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(
                Icons.badge_outlined,
                size: 13,
                color: AppColors.textSecondary,
              ),
              const SizedBox(width: 4),
              Text(
                'CCCD: ${member.identityNumber}',
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
