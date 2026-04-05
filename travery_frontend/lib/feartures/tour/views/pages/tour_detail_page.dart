import 'package:flutter/material.dart';


import '../../../core/themes/app_theme.dart';
import '../../model/tour_model.dart';
import '../../repositories/tour_repository.dart';
import '../widgets/bottom_action_bar.dart';
import '../widgets/itinerary_card.dart';
import '../widgets/tour_detail_card.dart';

class TourDetailScreen extends StatelessWidget {
  final String tourId;

  const TourDetailScreen({super.key, required this.tourId});

  @override
  Widget build(BuildContext context) {
    final Tour tour = TourRepository().getMockTours().firstWhere(
      (t) => t.id == tourId,
      orElse: () => throw Exception("Tour not found"),
    );

    return Scaffold(
      backgroundColor: AppTheme.neutralWhite,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Chi tiết tour'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 18,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
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
                    children: [
                      TourDetailCard(tour: tour),
                      const SizedBox(height: 16),
                      ...?tour.itinerary?.map(
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
          // Bottom bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomActionBar(
              price: tour.price,
              onTap: () {
                print("Đặt tour: ${tour.id}");
              },
            ),
          ),
        ],
      ),
    );
  }
}
