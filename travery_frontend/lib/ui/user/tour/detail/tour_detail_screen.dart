import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/user/tour/detail/view_models/tour_detail_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';
import 'package:travery_frontend/utils/format_utils.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import '../../../core/widgets/app_bar_widget.dart';
import 'widgets/tour_image_carousel.dart';
import 'widgets/section_title.dart';
import 'widgets/price_card.dart';

class TourDetailScreen extends StatefulWidget {
  final String? tourId;

  const TourDetailScreen({super.key, this.tourId});

  @override
  State<TourDetailScreen> createState() => _TourDetailScreenState();
}

class _TourDetailScreenState extends State<TourDetailScreen> {
  late TourDetailViewModel _viewModel;
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _viewModel = context.read<TourDetailViewModel>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadTour();
    });
  }

  void _loadTour() {
    if (widget.tourId != null) {
      _viewModel.loadTourDetail(widget.tourId!);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarWidget(title: 'Chi Tiết Tour'),
      body: Consumer<TourDetailViewModel>(
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
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    viewModel.errorMessage!,
                    style: const TextStyle(color: AppColors.textPrimary),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      if (widget.tourId != null) {
                        viewModel.loadTourDetail(widget.tourId!);
                      }
                    },
                    child: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }

          final tour = viewModel.tour;
          if (tour == null) {
            return const Center(child: Text('Không tìm thấy tour'));
          }

          final images = tour.images ?? [];
          final pricePerAdult = FormatUtils.formatCurrency(tour.pricePerAdult);
          final description = tour.description?['overview'] as String? ?? '';

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TourImageCarousel(
                  images: images.map((img) => img.imageUrl).toList(),
                  pageController: _pageController,
                  currentPage: _currentPage,
                  onPageChanged: (index) {
                    setState(() => _currentPage = index);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tour.name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const SectionTitle(
                        icon: Icons.analytics,
                        title: 'Tổng quan',
                      ),
                      PriceCard(price: pricePerAdult),
                      const SizedBox(height: 24),
                      if (viewModel.availableInstances.isNotEmpty) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SectionTitle(
                              icon: Icons.calendar_month,
                              title: 'Lịch khởi hành',
                            ),
                            Text(
                              '${viewModel.selectedInstanceIndex + 1}/${viewModel.availableInstances.length}',
                              style: const TextStyle(
                                color: AppColors.textSecondary,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 50,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: viewModel.availableInstances.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 8),
                            itemBuilder: (context, index) {
                              final instance =
                                  viewModel.availableInstances[index];
                              final isSelected =
                                  index == viewModel.selectedInstanceIndex;
                              return _buildInstanceChip(
                                instance,
                                isSelected,
                                () => viewModel.selectInstance(index),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                      const SectionTitle(
                        icon: Icons.description,
                        title: 'Mô tả',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: const TextStyle(
                          color: AppColors.textSecondary,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildInstanceChip(
    TourInstance instance,
    bool isSelected,
    VoidCallback onTap,
  ) {
    final startDate = FormatUtils.formatDate(instance.startDate);
    final endDate = FormatUtils.formatDate(instance.endDate);
    final dateRange = '$startDate - $endDate';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.surface,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.inputBorder,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.calendar_today,
              size: 14,
              color: isSelected ? Colors.white : AppColors.textSecondary,
            ),
            const SizedBox(width: 8),
            Text(
              dateRange,
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.textPrimary,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleBookTour() {
    final tourDetailViewModel = context.read<TourDetailViewModel>();
    final bookingViewModel = context.read<BookingViewModel>();

    if (tourDetailViewModel.tour == null) return;

    if (tourDetailViewModel.availableInstances.isNotEmpty &&
        tourDetailViewModel.selectedInstance == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng chọn ngày khởi hành trước khi đặt tour'),
          backgroundColor: AppColors.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    bookingViewModel.setTourData(
      tour: tourDetailViewModel.tour!,
      selectedInstance: tourDetailViewModel.selectedInstance,
    );
    context.push(Routes.tourBooking);
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: AppColors.inputBorder)),
      ),
      child: ElevatedButton(
        onPressed: _handleBookTour,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonPrimary,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text(
          'ĐẶT TOUR NGAY',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
