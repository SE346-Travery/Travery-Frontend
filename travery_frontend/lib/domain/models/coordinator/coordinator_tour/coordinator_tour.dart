import 'package:travery_frontend/domain/models/coordinator/coordinator_hotel/coordinator_hotel.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_guide/coordinator_guilde.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_template/coordinator_template.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_member/coordinator_tour_member.dart';

class CoordinatorTour {
  final CoordinatorTemplate template;
  final CoordinatorHotel hotel;
  final CoordinatorGuide guide;
  final CoordinatorTourMember tourMember;

  const CoordinatorTour({
    required this.template,
    required this.hotel,
    required this.guide,
    required this.tourMember,
  });
}
