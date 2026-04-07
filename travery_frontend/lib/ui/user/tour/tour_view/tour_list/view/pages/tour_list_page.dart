import 'package:flutter/material.dart';

import 'package:travery_frontend/ui/user/tour/tour_view/tour_list/view/widgets/appbar.dart';

import '../../../../../../../data/fake_data/tour_data.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../tour_detail/view/pages/tour_detail_page.dart';
import '../widgets/header.dart';
import '../widgets/tourlist_card.dart';

class TourListScreen extends StatelessWidget {
  const TourListScreen({super.key});

  String _getDurationText(DateTime start, DateTime end) {
    final days = end.difference(start).inDays + 1;
    final nights = days > 1 ? days - 1 : 0;
    return "${days}N${nights}Đ";
  }

  void _navigateToTourDetail(BuildContext context, String id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TourDetailPage(tourId: id), // Dùng biến id ở đây
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final alltour = combinedList;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: BaseAppBar(title: 'Danh sách Tour'),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: alltour.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) return const SortHeader();

          final data = alltour[index - 1];
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: TourCard(
              title: data.tour.name,
              price: data.tour.price.toDouble(),
              startDate: data.instance.startDate,
              duration: _getDurationText(
                data.instance.startDate,
                data.instance.endDate,
              ),
              imageUrl:
                  "https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg",
              onTap: () {
                final tourId = data.instance.id;
                print('Đang mở Tour với ID: $tourId');
                _navigateToTourDetail(context, tourId);
              },
            ),
          );
        },
      ),
    );
  }
}
