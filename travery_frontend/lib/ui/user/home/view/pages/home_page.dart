import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/ui/user/home/view/widgets/category_item.dart';

import '../../../../../routing/routes.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../repositories/tour_repository.dart';
import '../widgets/home_tour_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigateToTourList(BuildContext context) {
    context.push(Routes.tourlist);
    return null;
  }

  void _navigateToTourDetail(BuildContext context, String tourId) {
    context.push('/tour-detail/$tourId');
  }

  @override
  Widget build(BuildContext context) {
    final tours = TourRepository().getMockTours();

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColors.primary,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          "Xin chào, Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.notifications_none_outlined, size: 28),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Tìm kiếm tour, xe khách, khách sạn...",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryItem(
                    icon: Icons.travel_explore,
                    label: "Tour",
                    onPressed: () => _navigateToTourList(context),
                  ),
                  CategoryItem(icon: Icons.directions_bus, label: "Vé xe"),
                  CategoryItem(icon: Icons.apartment, label: "Khách sạn"),
                ],
              ),

              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Tour nổi bật",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () => _navigateToTourList(context),
                      child: const Text(
                        "Xem tất cả",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 320,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: tours.length,
                  itemBuilder: (context, index) {
                    final tour = tours[index];
                    return HomeTourCard(
                      id: tour.id,
                      title: tour.title,
                      duration: tour.duration,
                      price: tour.price,
                      imageUrl: tour.thumbnail,
                      onPressed: () => _navigateToTourDetail(context, tour.id),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.primary),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bạn cần thiết kế chuyến đi riêng?",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Chat với chuyên gia để được tư vấn lịch trình cá nhân hóa 24/7.",
                        style: TextStyle(color: Colors.black54),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Liên hệ ngay",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
