import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/detail/widgets/user_image_carousel.dart';
import 'package:travery_frontend/ui/user/tour/detail/widgets/user_section_header.dart';
import 'package:travery_frontend/ui/user/tour/detail/widgets/user_price_card.dart';
import 'package:travery_frontend/ui/user/tour/detail/widgets/user_departure_item.dart';
import 'package:travery_frontend/ui/user/tour/detail/widgets/user_itinerary_timeline.dart';
import 'package:travery_frontend/ui/user/tour/detail/view_models/user_tour_detail_view_model.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_image/tour_image.dart';
import 'package:travery_frontend/data/services/api/model/tour/tour_intinerary_response/tour_itinerary_response.dart';

class UserTourDetailScreen extends StatefulWidget {
  final String tourId;

  const UserTourDetailScreen({super.key, required this.tourId});

  @override
  State<UserTourDetailScreen> createState() => _UserTourDetailScreenState();
}

class _UserTourDetailScreenState extends State<UserTourDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final viewModel = context.read<UserTourDetailViewModel>();
      viewModel.loadTourDetail.execute(widget.tourId);
      viewModel.loadTourInstances.execute(widget.tourId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface.withOpacity(0.8),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.textPrimary,
                size: 20,
              ),
              onPressed: () => Navigator.maybePop(context),
            ),
          ),
        ),
        title: const Text(
          'Chi tiết Tour',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
        ),
      ),
      body: Consumer<UserTourDetailViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.loadTourDetail.running) {
            return const Center(child: CircularProgressIndicator());
          }

          final tour = viewModel.tour;
          if (tour == null) {
            return const Center(
              child: Text(
                'Không tìm thấy tour',
                style: TextStyle(color: AppColors.textSecondary),
              ),
            );
          }

          return Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 110),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildImageCarousel(tour),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tour.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                              height: 1.25,
                              fontFamily: 'Inter',
                            ),
                          ),
                          const SizedBox(height: 32),
                          UserSectionHeader(
                            icon: Icons.payment,
                            title: 'Giá tour',
                          ),
                          const SizedBox(height: 16),
                          UserPriceCard(
                            adultPrice: tour.pricePerAdult,
                            childPrice: tour.pricePerChild,
                          ),
                          const SizedBox(height: 32),
                          UserSectionHeader(
                            icon: Icons.calendar_month,
                            title: 'Lịch khởi hành',
                          ),
                          const SizedBox(height: 16),
                          ...viewModel.instances.map((instance) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: UserDepartureItem(
                                instance: instance,
                                isSelected:
                                    viewModel.selectedInstance?.id ==
                                    instance.id,
                                onTap: () => viewModel.selectInstance(instance),
                              ),
                            );
                          }),
                          const SizedBox(height: 32),
                          UserSectionHeader(
                            icon: Icons.route,
                            title: 'Lịch trình chi tiết',
                          ),
                          const SizedBox(height: 16),
                          _buildItinerarySection(tour),
                          const SizedBox(height: 32),
                          UserSectionHeader(
                            icon: Icons.description,
                            title: 'Mô tả',
                          ),
                          const SizedBox(height: 16),
                          _buildDescriptionSection(tour),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 32,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.surface.withOpacity(0.95),
                    border: const Border(
                      top: BorderSide(color: Color(0x1FE5E7EB), width: 1),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonPrimary,
                      minimumSize: const Size(double.infinity, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 4,
                      shadowColor: AppColors.primary.withOpacity(0.25),
                    ),
                    child: const Text(
                      'ĐẶT TOUR NGAY',
                      style: TextStyle(
                        color: AppColors.buttonPrimaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildImageCarousel(Tour tour) {
    final images = tour.images ?? [];
    if (images.isEmpty) {
      return Container(
        height: 300,
        color: AppColors.inputBackground,
        child: const Center(
          child: Icon(Icons.image, color: AppColors.textHint, size: 64),
        ),
      );
    }
    return UserImageCarousel(images: images);
  }

  Widget _buildItinerarySection(Tour tour) {
    final itineraries = _createMockItineraries(tour.maxCapacity);
    return UserItineraryTimeline(itineraries: itineraries);
  }

  List<TourItineraryResponse> _createMockItineraries(int days) {
    final List<TourItineraryResponse> itineraries = [];
    for (var i = 1; i <= days && i <= 5; i++) {
      itineraries.add(
        TourItineraryResponse(
          dayNumber: i,
          title: 'Ngày $i: Khám phá địa điểm',
          description:
              'Lịch trình chi tiết cho ngày $i. Quý khách sẽ được trải nghiệm những điều thú vị nhất.',
        ),
      );
    }
    return itineraries;
  }

  Widget _buildDescriptionSection(Tour tour) {
    final description =
        tour.description?['overview'] ??
        'Khám phá tour du lịch tuyệt vời với chúng tôi.';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.textSecondary,
            height: 1.5,
            fontFamily: 'Inter',
          ),
        ),
      ],
    );
  }
}
