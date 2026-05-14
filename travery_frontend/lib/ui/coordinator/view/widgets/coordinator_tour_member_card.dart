import 'package:flutter/material.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_member/coordinator_tour_member.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';

class CoordinatorTourMemberCard extends StatefulWidget {
  final CoordinatorTourMember tourMember;

  const CoordinatorTourMemberCard({super.key, required this.tourMember});

  @override
  State<CoordinatorTourMemberCard> createState() =>
      _CoordinatorTourMemberCardState();
}

class _CoordinatorTourMemberCardState extends State<CoordinatorTourMemberCard> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Left blue accent
              Container(width: 5, color: AppColors.primary),
              Expanded(
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildHeader(),
                      if (_isExpanded) _buildMemberList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Avatar placeholder
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: AppColors.primaryLightWhiteBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.person_outline_rounded,
              color: AppColors.textPrimary,
              size: 28,
            ),
          ),
          const SizedBox(width: 12),
          // User Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.tourMember.userBookingName,
                  style: const TextStyle(
                    fontSize: AppTextTheme.bodyLarge,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.tourMember.phoneNumber,
                  style: const TextStyle(
                    fontSize: AppTextTheme.bodyMedium,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          // Toggle Button
          InkWell(
            onTap: _toggleExpanded,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.double_arrow_rounded,
                    color: AppColors.primary,
                    size: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    _isExpanded ? 'Thu gọn' : 'Xem thêm',
                    style: const TextStyle(
                      fontSize: AppTextTheme.bodyMedium,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMemberList() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 1,
            thickness: 0.5,
            color: AppColors.inputBorder,
          ),
          const SizedBox(height: 16),
          // Adults
          _buildCategoryHeader(
            'Người lớn',
            widget.tourMember.aldultNames.length,
          ),
          ...List.generate(widget.tourMember.aldultNames.length, (index) {
            return _buildMemberItem(
              widget.tourMember.aldultNames[index],
              widget.tourMember.aldultBirth[index],
            );
          }),
          const SizedBox(height: 12),
          // Children
          _buildCategoryHeader('Trẻ em', widget.tourMember.childName.length),
          ...List.generate(widget.tourMember.childName.length, (index) {
            return _buildMemberItem(
              widget.tourMember.childName[index],
              widget.tourMember.childBirth[index],
            );
          }),
        ],
      ),
    );
  }

  Widget _buildCategoryHeader(String title, int count) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        '$title ($count)',
        style: const TextStyle(
          fontSize: AppTextTheme.bodyMedium,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildMemberItem(String name, String birthDate) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, bottom: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: AppTextTheme.bodyMedium,
              color: AppColors.textPrimary,
            ),
          ),
          Text(
            birthDate,
            style: const TextStyle(
              fontSize: AppTextTheme.bodyMedium,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
