import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/routing/routes.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/service_grid_item.dart';
import '../widgets/horizontal_tour_list.dart';
import '../widgets/consultation_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  
  final List<TourData> _featuredTours = const [
    TourData(
      imageUrl:
          'https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg',
      title: 'Hành trình di sản Miền Trung',
      duration: '4 ngày 3 đêm',
      price: '3.500.000đ',
    ),
    TourData(
      imageUrl:
          'https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg',
      title: 'Khám phá Sương mù Sapa',
      duration: '3 ngày 2 đêm',
      price: '2.850.000đ',
    ),
  ];
  GestureTapCallback? _navigateToTourList(BuildContext context) {
    context.push(Routes.tourlist);
    return null;
  }

  void _navigateToTourListVoid(BuildContext context) {
    context.push(Routes.tourlist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        greeting: 'Xin chào',
        userName: 'user',
        notificationCount: 3,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Search Bar
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchBarWidget(
                hintText: 'Tìm kiếm tour, xe khách, khách sạn...',
              ),
            ),

            const SizedBox(height: 32),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ServiceGrid(
                items: [
                  ServiceGridItem(
                    icon: Icons.travel_explore,
                    label: 'Tour',
                    onTap: () => _navigateToTourList(context),
                  ),
                  ServiceGridItem(
                    icon: Icons.directions_bus,
                    label: 'Vé xe',
                    onTap: () {},
                  ),
                  ServiceGridItem(
                    icon: Icons.apartment,
                    label: 'Khách sạn',
                    onTap: () {},
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            SectionHeader(
              title: 'Tour nổi bật',
              actionText: 'Xem tất cả',
              onActionTap: () => _navigateToTourListVoid(context),
            ),
            const SizedBox(height: 16),
            HorizontalTourList(
              tours: _featuredTours,
              onTourTap: (tour) {
                // Handle tour tap
              },
            ),

            const SizedBox(height: 32),

            ConsultationBanner(
              title: 'Bạn cần thiết kế chuyến đi riêng?',
              description:
                  'Chat với chuyên gia để được tư vấn lịch trình cá nhân hóa 24/7.',
              buttonText: 'Liên hệ ngay',
              onButtonTap: () {},
            ),

            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
