import 'package:travery_frontend/domain/models/coordinator/coordinator_template_initerary/coordinator_template_initerary.dart';

class CoordinatorTemplate {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final String adultPrice;
  final String childPrice;
  final String startTime;
  final String endTime;
  final int minTotalPerson;
  final int maxTotalPerson;
  final List<CoordinatorTemplateItinerary> itineraries;

  const CoordinatorTemplate({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.adultPrice,
    required this.childPrice,
    required this.startTime,
    required this.endTime,
    required this.minTotalPerson,
    required this.maxTotalPerson,
    required this.itineraries,
  });
}
