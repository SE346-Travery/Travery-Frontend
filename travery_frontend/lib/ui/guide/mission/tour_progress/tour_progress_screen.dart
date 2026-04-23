import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/ui/guide/mission/tour_progress/view_models/tour_progress_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/tour_progress/widgets/tour_progress_header_card.dart';
import 'package:travery_frontend/ui/guide/mission/tour_progress/widgets/tour_progress_info_cards.dart';
import 'package:travery_frontend/ui/guide/mission/tour_progress/widgets/tour_progress_timeline.dart';
import 'package:travery_frontend/ui/guide/mission/tour_progress/widgets/tour_progress_emergency_button.dart';

import '../../../core/widgets/app_bar_widget.dart';

class TourProgressScreen extends StatefulWidget {
  final String missionId;

  const TourProgressScreen({super.key, required this.missionId});

  @override
  State<TourProgressScreen> createState() => _TourProgressScreenState();
}

class _TourProgressScreenState extends State<TourProgressScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TourProgressViewModel>().loadTourProgress(widget.missionId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarWidget(title: 'Tiến độ chuyến đi'),
      body: Consumer<TourProgressViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            );
          }

          if (viewModel.errorMessage != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: AppColors.error,
                    size: 40,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Đã xảy ra lỗi',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: AppTextTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () =>
                        viewModel.loadTourProgress(widget.missionId),
                    child: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }

          final progress = viewModel.progress;
          if (progress == null) {
            return const Center(child: Text('Không tìm thấy tiến độ tour'));
          }

          return RefreshIndicator(
            onRefresh: viewModel.refreshProgress,
            color: AppColors.primary,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TourProgressHeaderCard(
                    title: progress.tourName,
                    tourCode: progress.tourCode,
                  ),
                  const SizedBox(height: 12),
                  TourProgressInfoCards(
                    driverName: progress.driverName,
                    vehiclePlate: progress.vehiclePlate,
                    totalPassengers: progress.totalPassengers,
                    customerName: progress.customerName,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Tiến độ chuyến đi',
                    style: TextStyle(
                      fontSize: AppTextTheme.labelMedium,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TourProgressTimeline(
                    steps: viewModel.steps,
                    onCompleteStep: () async {
                      final success = await viewModel.completeCurrentStep();
                      if (success && mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Cập nhật thành công'),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: AppColors.success,
                          ),
                        );
                      }
                    },
                    isUpdating: viewModel.isUpdating,
                  ),
                  const SizedBox(height: 16),
                  TourProgressEmergencyButton(
                    onPressed: () => _showEmergencyDialog(context, viewModel),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _showEmergencyDialog(
    BuildContext context,
    TourProgressViewModel viewModel,
  ) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Báo cáo sự cố'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: 'Mô tả sự cố...'),
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Hủy'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(ctx);
              final success = await viewModel.reportEmergency(controller.text);
              if (success && mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Đã gửi báo cáo sự cố'),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: AppColors.success,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: const Text('Gửi báo cáo'),
          ),
        ],
      ),
    );
  }
}
