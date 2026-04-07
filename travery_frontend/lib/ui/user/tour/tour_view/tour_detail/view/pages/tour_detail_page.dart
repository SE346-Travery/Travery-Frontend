import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/user/tour/tour_booking/input/view/pages/tour_bookinh_input_page.dart';
import '../../../../../../../data/fake_data/tour_data.dart';
import '../widgets/tourdetail_card.dart';

class TourDetailPage extends StatelessWidget {
  final String tourId;

  const TourDetailPage({super.key, required this.tourId});

  void _navigateToTourBookingInputPage(BuildContext context, String tourId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            TourBookinhInputPage(userId: '1', tourInstanceId: tourId),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('DEBUG: Nhận được tourId là: $tourId');
    final tourCombined = combinedList.firstWhere(
      (item) => item.instance.id == tourId,
      orElse: () => combinedList.first,
    );
    print("tourcombined la $tourCombined.instance.id");
    return TourDetailCard(
      tourCombined: tourCombined,
      imageUrls: const [
        'https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg',
      ],
      onBackPressed: () {},
      onSharePressed: () {},
      onBookPressed: () => _navigateToTourBookingInputPage(context, tourId),
    );
  }
}
