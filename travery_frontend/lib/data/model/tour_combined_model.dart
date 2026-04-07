import 'tour_model.dart';
import 'tour_instance_model.dart';

class TourCombined {
  final Tour tour;
  final TourInstance instance;

  TourCombined({required this.tour, required this.instance});

  String get durationText {
    final days = instance.endDate.difference(instance.startDate).inDays;

    if (days <= 0) return "Trong ngày";

    final nights = days - 1;

    if (nights <= 0) {
      return "$days ngày";
    }

    return "$days ngày $nights đêm";
  }
}
