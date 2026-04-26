import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/view_models/our_completed_view_model.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/widgets/our_completed_header.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/widgets/our_completed_status_banner.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/widgets/our_completed_stats_card.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/widgets/our_completed_timeline.dart';
import 'package:travery_frontend/ui/guide/mission/tour_completed/widgets/our_completed_incident_card.dart';

class TourCompletedScreen extends StatefulWidget {
  final String missionId;

  const TourCompletedScreen({super.key, required this.missionId});

  @override
  State<TourCompletedScreen> createState() => _TourCompletedScreenState();
}

class _TourCompletedScreenState extends State<TourCompletedScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TourCompletedViewModel>().loadTourDetail(
        missionId: widget.missionId,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface.withValues(alpha: 0.9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.primary,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Chi tiết chuyến đi',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: AppTextTheme.labelMedium,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: AppColors.primary,
              size: 22,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Consumer<TourCompletedViewModel>(
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
                        viewModel.loadTourDetail(missionId: widget.missionId),
                    child: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }

          final detail = viewModel.detail;
          if (detail == null) {
            return const Center(
              child: Text('Không tìm thấy chi tiết chuyến đi'),
            );
          }

          return RefreshIndicator(
            onRefresh: viewModel.refreshDetail,
            color: AppColors.primary,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TourCompletedHeader(
                    tripCode: viewModel.formattedTripCode,
                    title: detail.title,
                    date: detail.formattedDate,
                  ),
                  const SizedBox(height: 12),
                  TourCompletedStatusBanner(status: detail.status),
                  const SizedBox(height: 12),
                  TourCompletedStatsCard(
                    totalPassengers: detail.totalPassengers,
                    presentPassengers: detail.presentPassengers,
                    absentPassengers: detail.absentPassengers,
                  ),
                  const SizedBox(height: 12),
                  TourCompletedTimeline(steps: detail.completedSteps),
                  const SizedBox(height: 12),
                  TourCompletedIncidentCard(incidents: detail.incidents),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
