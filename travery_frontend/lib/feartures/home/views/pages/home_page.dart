import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';
import '../../../tour/model/tour_model.dart';
import '../../../tour/repositories/tour_repository.dart';
import '../../../tour/views/pages/tour_list_page.dart';
import '../widgets/service_item.dart';
import '../widgets/tour_card.dart';
import '../widgets/bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();

  void _scroll(double offset) {
    _controller.animateTo(
      _controller.offset + offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _navigateToTourList(BuildContext context) {
    print("go to tourlist");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TourListScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Tour> _allTours = TourRepository().getMockTours();

    return Scaffold(
      backgroundColor: AppTheme.neutralGrey1,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.neutralWhite.withOpacity(0.8),
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.waving_hand, color: AppTheme.primaryMain),
            const SizedBox(width: 8),
            const Text('Xin chào, User'),
          ],
        ),
        actions: const [
          Icon(Icons.notifications_none, color: AppTheme.neutralGrey2),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            // Search
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 48,
              decoration: BoxDecoration(
                color: AppTheme.neutralWhite,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppTheme.borderStroke),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: AppTheme.neutralGrey2),
                  SizedBox(width: 12),
                  Text(
                    'Tìm kiếm tour, xe khách...',
                    style: TextStyle(color: AppTheme.neutralGrey2),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceItem(
                  icon: Icons.travel_explore,
                  label: 'Tour',
                  onPressed: () => _navigateToTourList(context),
                ),
                ServiceItem(icon: Icons.directions_bus, label: 'Vé xe'),
                ServiceItem(icon: Icons.apartment, label: 'Khách sạn'),
              ],
            ),

            const SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tour nổi bật',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppTheme.neutralDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('go to tourpage');
                        _navigateToTourList(context);
                      },
                      child: Text(
                        'Xem thêm',
                        style: TextStyle(
                          color: AppTheme.primaryMain,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    IconButton(
                      onPressed: () => _scroll(-296),
                      icon: const Icon(Icons.chevron_left),
                    ),
                    IconButton(
                      onPressed: () => _scroll(296),
                      icon: const Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            SizedBox(
              height: 310,
              child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: _allTours.length,
                itemBuilder: (_, i) => TourCard(tour: _allTours[i]),
              ),
            ),

            const SizedBox(height: 24),

            // Banner
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppTheme.primaryLight.withOpacity(0.5),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppTheme.primaryLight),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bạn cần thiết kế chuyến đi riêng?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryDark,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Chat với chuyên gia để được tư vấn lịch trình cá nhân hóa 24/7.',
                    style: TextStyle(fontSize: 14, color: Color(0xFF405E96)),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryMain,
                      foregroundColor: AppTheme.neutralWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        print("lien he ngay");
                      },
                      child: const Text(
                        'Liên hệ ngay',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 100),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
