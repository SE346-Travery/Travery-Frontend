import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/detail/view_models/tour_detail_view_model.dart';
import 'package:travery_frontend/data/models/tour/tour_detail_page_data.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';

import '../../../../data/services/api/model/tour/refund_policy_response/refund_policy_response.dart';

class TourDetailScreen extends StatefulWidget {
  const TourDetailScreen({
    super.key,
    required this.viewModel,
    required this.tourId,
  });

  final TourDetailViewModel viewModel;
  final String tourId;

  @override
  State<TourDetailScreen> createState() => _TourDetailScreenState();
}

class _TourDetailScreenState extends State<TourDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.viewModel.loadTourDetail(widget.tourId);
      widget.viewModel.loadTourInstances(widget.tourId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      body: Consumer<TourDetailViewModel>(
        builder: (context, vm, _) {
          if (vm.isLoadingDetail) {
            return const Center(child: CircularProgressIndicator());
          }

          if (vm.error != null || vm.tourDetail == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.grey),
                  const SizedBox(height: 12),
                  const Text('Không thể tải chi tiết tour'),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () => vm.loadTourDetail(widget.tourId),
                    child: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }

          final tour = vm.tourDetail!;
          return CustomScrollView(
            slivers: [
              // Image Carousel
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                backgroundColor: Colors.white,
                leading: GestureDetector(
                  onTap: () => context.pop(),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFF131B2E),
                    ),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: _buildImageCarousel(tour),
                ),
              ),

              // Content
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        tour.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF131B2E),
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Rating
                      if (tour.averageRating != null && tour.averageRating! > 0)
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.orange,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    tour.averageRating!.toStringAsFixed(1),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF131B2E),
                                    ),
                                  ),
                                  if (tour.ratingCount != null)
                                    Text(
                                      ' (${tour.ratingCount} đánh giá)',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF414755),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            if (tour.destination != null)
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Color(0xFF414755),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    tour.destination!.name,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF414755),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),

                      const SizedBox(height: 24),

                      // Price Section
                      _SectionTitle(title: 'Giá tour', icon: Icons.payments),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: _PriceCard(
                              label: 'Người lớn',
                              price: tour.pricePerAdult,
                              subtitle: 'Từ 12 tuổi trở lên',
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _PriceCard(
                              label: 'Trẻ em',
                              price: tour.pricePerChild,
                              subtitle: 'Dưới 12 tuổi',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Departure Schedule
                      _SectionTitle(
                        title: 'Lịch khởi hành',
                        icon: Icons.calendar_month,
                      ),
                      const SizedBox(height: 12),
                      _buildScheduleList(vm),

                      const SizedBox(height: 24),

                      // Itinerary
                      if (tour.itineraryList != null &&
                          tour.itineraryList!.isNotEmpty) ...[
                        _SectionTitle(
                          title: 'Lịch trình chi tiết',
                          icon: Icons.route,
                        ),
                        const SizedBox(height: 12),
                        _buildItinerary(tour.itineraryList!),
                        const SizedBox(height: 24),
                      ],

                      // Description
                      if (tour.description != null &&
                          tour.description!.isNotEmpty) ...[
                        _SectionTitle(title: 'Mô tả', icon: Icons.description),
                        const SizedBox(height: 12),
                        Text(
                          tour.description!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF414755),
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],

                      // Refund Policy
                      if (tour.refundPolicy != null) ...[
                        _SectionTitle(
                          title: 'Chính sách hoàn hủy',
                          icon: Icons.policy,
                        ),
                        const SizedBox(height: 12),
                        _buildRefundPolicy(tour.refundPolicy!),
                      ],

                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: Consumer<TourDetailViewModel>(
        builder: (context, vm, _) {
          if (vm.instances.isEmpty) {
            return const SizedBox.shrink();
          }

          return Container(
            padding: EdgeInsets.fromLTRB(
              20,
              16,
              20,
              MediaQuery.of(context).padding.bottom + 16,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 20,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () => _showInstancePicker(context, vm),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: const Text(
                'ĐẶT TOUR NGAY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildImageCarousel(TourDetailPageData tour) {
    final images = tour.images ?? [];

    if (images.isEmpty) {
      return Container(
        color: const Color(0xFFEAEDFF),
        child: const Center(
          child: Icon(Icons.image, size: 60, color: Color(0xFF717786)),
        ),
      );
    }

    return PageView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Image.network(
          images[index].url,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Container(
            color: const Color(0xFFEAEDFF),
            child: const Center(
              child: Icon(Icons.image, size: 60, color: Color(0xFF717786)),
            ),
          ),
        );
      },
    );
  }

  Widget _buildScheduleList(TourDetailViewModel vm) {
    if (vm.isLoadingInstances) {
      return const Center(child: CircularProgressIndicator());
    }

    if (vm.instances.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F3FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          'Hiện chưa có lịch khởi hành',
          style: TextStyle(color: Color(0xFF414755)),
        ),
      );
    }

    return Column(
      children: vm.instances.map((instance) {
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFC1C6D7).withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${_formatDate(instance.startDate)} - ${_formatDate(instance.endDate)}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF131B2E),
                      ),
                    ),
                    if (instance.status != null)
                      Text(
                        _getInstanceStatusLabel(instance.status!),
                        style: TextStyle(
                          fontSize: 12,
                          color: _getInstanceStatusColor(instance.status!),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: instance.availableSlots > 0
                      ? const Color(0xFFD2E1F7)
                      : const Color(0xFFFFDAD6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  instance.availableSlots > 0
                      ? 'Còn ${instance.availableSlots} chỗ'
                      : 'Hết chỗ',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: instance.availableSlots > 0
                        ? const Color(0xFF0058BC)
                        : const Color(0xFFBA1A1A),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildItinerary(List<TourItineraryPageData> itinerary) {
    return Column(
      children: itinerary.map((day) {
        return _ItineraryDay(day: day);
      }).toList(),
    );
  }

  Widget _buildRefundPolicy(RefundPolicyResponse policy) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFC1C6D7).withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (policy.name != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                policy.name!,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF131B2E),
                ),
              ),
            ),
          if (policy.rules != null)
            ...policy.rules!.map((rule) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Trước ${rule.daysBefore} ngày',
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF414755),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Hoàn ${rule.refundPercentage}%',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF131B2E),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ],
      ),
    );
  }

  void _showInstancePicker(BuildContext context, TourDetailViewModel vm) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) => DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.3,
        maxChildSize: 0.8,
        expand: false,
        builder: (_, scrollController) => Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Chọn lịch khởi hành',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF131B2E),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: vm.instances.length,
                itemBuilder: (ctx, index) {
                  final instance = vm.instances[index];
                  final isAvailable = instance.availableSlots > 0;

                  return GestureDetector(
                    onTap: isAvailable
                        ? () {
                            Navigator.pop(ctx);
                            context.push(
                              '/tour/${widget.tourId}/book',
                              extra: {
                                'instanceId': instance.id,
                                'tourName': vm.tourDetail?.name ?? '',
                                'pricePerAdult':
                                    vm.tourDetail?.pricePerAdult ?? 0,
                                'pricePerChild':
                                    vm.tourDetail?.pricePerChild ?? 0,
                              },
                            );
                          }
                        : null,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFC1C6D7).withValues(alpha: 0.3),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${_formatDate(instance.startDate)} - ${_formatDate(instance.endDate)}',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: isAvailable
                                        ? const Color(0xFF131B2E)
                                        : Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  isAvailable
                                      ? 'Còn ${instance.availableSlots} chỗ'
                                      : 'Hết chỗ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: isAvailable
                                        ? AppColors.primary
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            isAvailable ? Icons.arrow_forward_ios : Icons.block,
                            size: 16,
                            color: isAvailable
                                ? AppColors.primary
                                : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  String _getInstanceStatusLabel(TourInstanceStatus status) {
    switch (status) {
      case TourInstanceStatus.PLANNING:
        return 'Đang lên kế hoạch';
      case TourInstanceStatus.OPEN:
        return 'Mở bán';
      case TourInstanceStatus.FULL:
        return 'Đã đầy';
      case TourInstanceStatus.IN_PROGRESS:
        return 'Đang diễn ra';
      case TourInstanceStatus.COMPLETED:
        return 'Đã hoàn thành';
      case TourInstanceStatus.CANCELLED:
        return 'Đã hủy';
      case TourInstanceStatus.POSTPONED:
        return 'Tạm hoãn';
      default:
        return '';
    }
  }

  Color _getInstanceStatusColor(TourInstanceStatus status) {
    switch (status) {
      case TourInstanceStatus.OPEN:
        return AppColors.primary;
      case TourInstanceStatus.FULL:
        return Colors.orange;
      case TourInstanceStatus.CANCELLED:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
      ],
    );
  }
}

class _PriceCard extends StatelessWidget {
  const _PriceCard({
    required this.label,
    required this.price,
    required this.subtitle,
  });

  final String label;
  final double price;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F3FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: Color(0xFF414755),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            _formatPrice(price),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 11, color: Color(0xFF717786)),
          ),
        ],
      ),
    );
  }

  String _formatPrice(double price) {
    return '${price.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}

class _ItineraryDay extends StatelessWidget {
  const _ItineraryDay({required this.day});

  final TourItineraryPageData day;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${day.dayNumber}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 2,
                height: 40,
                color: AppColors.primary.withValues(alpha: 0.2),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  day.title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF131B2E),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  day.description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF414755),
                    height: 1.5,
                  ),
                ),
                if (day.images != null && day.images!.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      day.images!.first.url,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
