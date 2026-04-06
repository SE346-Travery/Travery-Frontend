import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/ui/user/home/view/widgets/primary_app_bar.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../model/tour_model.dart';
import '../../../repositories/tour_repository.dart';
import '../widgets/bottomactionbar.dart';
import '../widgets/itinerarycard.dart';
import '../widgets/tour_detail_card.dart';

class TourDetailPage extends StatelessWidget {
  final String tourId;

  const TourDetailPage({super.key, required this.tourId});

  void _navigateToTourBookingInput(BuildContext context, String tourId) {
    context.push('/tour-booking-input/$tourId');
  }

  @override
  Widget build(BuildContext context) {
    // !mock data
    final Tour tour = TourRepository().getMockTours().firstWhere(
      (t) => t.id == tourId,
      orElse: () => throw Exception("Tour not found"),
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const PrimaryAppBar(title: "Chi tiết tour"),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  child: Image.network(
                    tour.thumbnail,
                    height: 260,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TourDetailCard(tour: tour),
                      const SizedBox(height: 16),
                      if (tour.itinerary != null)
                        ...tour.itinerary!.map(
                          (i) => ItineraryCard(
                            dayTitle: "Ngày ${i.day}: ${i.title}",
                            description: i.description ?? "",
                            expanded: i.day == 1,
                          ),
                        ),
                      const SizedBox(height: 140),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomActionBar(
              price: tour.price,
              onTap: () {
                print("Đặt tour: ${tour.id}");
                _navigateToTourBookingInput(context, tour.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}
