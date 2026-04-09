import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/user/tour/tour_booking/input/view/pages/tour_booking_input_page.dart';
import '../../../../../../../data/fake_data/tour_data.dart';
import '../widgets/tourdetail_card.dart';

class TourDetailPage extends StatelessWidget {
  final String tourId;

  const TourDetailPage({super.key, required this.tourId});

  // void _navigateToTourBookingInputPage(BuildContext context, String tourId) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) =>
  //           TourBookingInputPage(userId: '1', tourInstanceId: tourId, fullTourData: ,),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    print('tourId là: $tourId');
    final tourCombined = combinedList.firstWhere(
      (item) => item.instance.id == tourId,
      orElse: () => combinedList.first,
    );
    return TourDetailCard(
      tourCombined: tourCombined,
      imageUrls: const [
        'https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg',
      ],
      onBackPressed: () {},
      onSharePressed: () {},
      onBookPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TourBookingInputPage(userId: '1', tourInstanceId: tourId,fullTourData: tourCombined,),
        ),
      ),
    );
  }
}
