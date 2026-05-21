import 'package:travery_frontend/domain/models/coordinator/coordinator_hotel/coordinator_hotel.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_guide/coordinator_guilde.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_template/coordinator_tour_template.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_member/coordinator_tour_member.dart';

class CoordinatorTour {
  final CoordinatorTourTemplate tourTemplate;
  final CoordinatorHotel hotel;
  final CoordinatorGuide guide;
  final CoordinatorTourMember tourMember;

  const CoordinatorTour({
    required this.tourTemplate,
    required this.hotel,
    required this.guide,
    required this.tourMember,
  });
}
