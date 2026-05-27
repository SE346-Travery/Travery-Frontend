import 'package:flutter/material.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress_enums.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';

class TourProgressTimeline extends StatelessWidget {
  final List<TourProgressStep> steps;
  final void Function(String stepId) onCompleteStep;
  final bool isUpdating;

  const TourProgressTimeline({
    super.key,
    required this.steps,
    required this.onCompleteStep,
    required this.isUpdating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: steps.asMap().entries.map((entry) {
        final step = entry.value;
        final isLast = entry.key == steps.length - 1;
        return _TimelineItem(
          step: step,
          isLast: isLast,
          onComplete: () => onCompleteStep(step.id),
          isUpdating: isUpdating && step.isActive,
        );
      }).toList(),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final TourProgressStep step;
  final bool isLast;
  final VoidCallback onComplete;
  final bool isUpdating;

  const _TimelineItem({
    required this.step,
    required this.isLast,
    required this.onComplete,
    required this.isUpdating,
  });

  @override
  Widget build(BuildContext context) {
    Color cardColor;
    double opacity = 1.0;

    switch (step.status) {
      case TimelineStepStatus.completed:
        cardColor = AppColors.surface;
        break;
      case TimelineStepStatus.active:
        cardColor = const Color(0xFFDAE2FD);
        break;
      case TimelineStepStatus.upcoming:
        cardColor = AppColors.surface.withValues(alpha: 0.6);
        opacity = 0.6;
        break;
    }

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTimelineIndicator(),
          const SizedBox(width: 12),
          Expanded(child: _buildContentCard(cardColor, opacity)),
        ],
      ),
    );
  }

  Widget _buildTimelineIndicator() {
    return SizedBox(
      width: 28,
      child: Column(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: _getIndicatorColor(),
              shape: BoxShape.circle,
              border: step.isActive
                  ? Border.all(
                      color: AppColors.primary.withValues(alpha: 0.2),
                      width: 3,
                    )
                  : null,
            ),
            child: _getIndicatorIcon(),
          ),
          if (!isLast)
            Expanded(
              child: Container(
                width: 2,
                color: step.isCompleted
                    ? AppColors.primary
                    : AppColors.inputBorder.withValues(alpha: 0.5),
              ),
            ),
        ],
      ),
    );
  }

  Color _getIndicatorColor() {
    switch (step.status) {
      case TimelineStepStatus.completed:
        return AppColors.primary;
      case TimelineStepStatus.active:
        return AppColors.primary;
      case TimelineStepStatus.upcoming:
        return AppColors.inputBorder;
    }
  }

  Widget? _getIndicatorIcon() {
    if (step.isCompleted) {
      return const Icon(Icons.check, color: Colors.white, size: 12);
    }
    if (step.isActive) {
      return Center(
        child: Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      );
    }
    return null;
  }

  Widget _buildContentCard(Color cardColor, double opacity) {
    return Opacity(
      opacity: opacity,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: step.isActive
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.03),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ]
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    step.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppTextTheme.bodyMedium,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                _buildStatusBadge(),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              step.description,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            if (step.time != null) ...[
              const SizedBox(height: 6),
              Text(
                step.time!,
                style: const TextStyle(
                  fontSize: 10,
                  color: AppColors.textHint,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
            const SizedBox(height: 12),
            _buildActionButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton() {
    if (step.isCompleted) {
      return Row(
        children: [
          Icon(Icons.check_circle, color: AppColors.primary, size: 16),
          const SizedBox(width: 6),
          const Text(
            'Đã hoàn thành',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );
    }

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: isUpdating ? null : onComplete,
        icon: isUpdating
            ? const SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : const Icon(Icons.check_circle_outline, size: 16),
        label: Text(
          step.isActive ? 'Xác nhận hoàn thành' : 'Đánh dấu hoàn thành',
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: step.isActive
              ? AppColors.primary
              : AppColors.surface,
          foregroundColor: step.isActive ? Colors.white : AppColors.primary,
          minimumSize: const Size(double.infinity, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: step.isActive
                ? BorderSide.none
                : const BorderSide(color: AppColors.primary, width: 1.5),
          ),
          elevation: step.isActive ? 2 : 0,
          textStyle: const TextStyle(
            fontSize: AppTextTheme.buttonSmall,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBadge() {
    if (step.isCompleted) {
      return _StatusTag(text: 'HOÀN THÀNH', color: AppColors.primary);
    }
    if (step.isActive) {
      return _StatusTag(
        text: 'ĐANG DIỄN RA',
        color: AppColors.primary,
        isPulse: true,
      );
    }
    return _StatusTag(text: 'CHƯA BẮT ĐẦU', color: AppColors.textHint);
  }
}

class _StatusTag extends StatelessWidget {
  final String text;
  final Color color;
  final bool isPulse;

  const _StatusTag({
    required this.text,
    required this.color,
    this.isPulse = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isPulse) ...[
            Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            const SizedBox(width: 3),
          ],
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
