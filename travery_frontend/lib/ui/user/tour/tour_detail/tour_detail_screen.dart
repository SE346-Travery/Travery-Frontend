import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../data/seed_models/tour_instance/tour_instance.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import '../widgets/app_bar.dart';
import '../view_models/tour_detail_view_model.dart';
import 'widgets/image_carousel.dart';
import 'widgets/section_title.dart';
import 'widgets/tour_overview_card.dart';

class TourDetailScreen extends StatefulWidget {
  final String tourId;
  final TourDetailViewModel viewModel;

  const TourDetailScreen({
    super.key,
    required this.tourId,
    required this.viewModel,
  });

  @override
  State<TourDetailScreen> createState() => _TourDetailScreenState();
}

class _TourDetailScreenState extends State<TourDetailScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.loadTour(widget.tourId);
  }

  @override
  Widget build(BuildContext context) {
    final tour = widget.viewModel.tour;

    if (widget.viewModel.isLoading) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: const AppBarDefault(title: 'Chi tiết Tour'),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (tour == null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: const AppBarDefault(title: 'Chi tiết Tour'),
        body: const Center(child: Text('Tour không tìm thấy')),
      );
    }

    final overview = tour.description?['overview'] ?? '';

    return Scaffold(
      backgroundColor: AppColors.background,
      extendBodyBehindAppBar: true,
      appBar: const AppBarDefault(title: 'Chi tiết Tour'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TourImageCarousel(imageUrls: tour.images!.map((e) => e.imageUrl).toList()),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tour.name,
                    style: TextStyle(fontSize: AppTextTheme.labelLarge, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 24),
                  const SectionTitle(icon: Icons.analytics, title: "Tổng quan"),
                  TourOverviewCard(price: tour.pricePerAdult),
                  const SizedBox(height: 24),
                  const SectionTitle(icon: Icons.calendar_month, title: "Lịch khởi hành"),
                  Column(
                    children: tour.instances!.map((i) => _buildScheduleItem(i)).toList(),
                  ),
                  const SizedBox(height: 24),
                  const SectionTitle(icon: Icons.description, title: "Mô tả"),
                  Text(
                    overview,
                    style: TextStyle(fontSize: AppTextTheme.bodyMedium, color: AppColors.textSecondary, height: 1.6),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          border: const Border(top: BorderSide(color: Color(0xFFE5E7EB))),
        ),
        child: ElevatedButton(
          onPressed: () {
            final instance = widget.viewModel.selectedInstance;
            if (instance != null) {
              context.push('/tour/${widget.tourId}/book', extra: {
                'tourId': widget.tourId,
                'tourInstanceId': instance.id,
              });
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Đặt tour: ${tour.name} | ${DateFormat('dd/MM').format(instance!.startDate)}")),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            minimumSize: const Size(double.infinity, 40),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Text("ĐẶT TOUR NGAY", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: AppTextTheme.buttonLarge)),
        ),
      ),
    );
  }

  Widget _buildScheduleItem(TourInstance instance) {
    final isSelected = widget.viewModel.selectedInstance?.id == instance.id;
    final dateStr = "${DateFormat('dd/MM').format(instance.startDate)} - ${DateFormat('dd/MM').format(instance.endDate)}";

    return GestureDetector(
      onTap: () => widget.viewModel.selectInstanceDirect(instance),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFE5F2FF) : Colors.white,
          border: Border.all(color: isSelected ? AppColors.primary : const Color(0xFFE5E7EB), width: isSelected ? 1.5 : 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              dateStr,
              style: TextStyle(fontWeight: FontWeight.w600, color: isSelected ? AppColors.primary : Colors.black),
            ),
            if (isSelected) const Icon(Icons.check_circle, color: AppColors.primary, size: 18),
          ],
        ),
      ),
    );
  }
}
