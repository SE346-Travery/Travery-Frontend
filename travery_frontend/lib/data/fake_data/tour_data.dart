import '../model/tour_combined_model.dart';
import '../model/tour_instance_model.dart';
import '../model/tour_model.dart';

final tours = [
  Tour(
    id: "t1",
    name: "Tour Đà Lạt 3N2Đ",
    description: {"detail": "Săn mây, đồi chè, thác nước"},
    price: 2500000,
    maxSlot: 20,
    isCustom: false,
    status: "active",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Tour(
    id: "t2",
    name: "Phú Quốc nghỉ dưỡng",
    description: {"detail": "Resort + lặn biển"},
    price: 5200000,
    maxSlot: 15,
    isCustom: false,
    status: "active",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Tour(
    id: "t3",
    name: "Hà Giang loop",
    description: {"detail": "Phượt xe máy"},
    price: 3200000,
    maxSlot: 10,
    isCustom: true,
    status: "active",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Tour(
    id: "t4",
    name: "Sa Pa trekking",
    description: {"detail": "Leo núi + bản làng"},
    price: 2800000,
    maxSlot: 12,
    isCustom: false,
    status: "active",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Tour(
    id: "t5",
    name: "Nha Trang biển",
    description: {"detail": "Tắm biển + đảo"},
    price: 3000000,
    maxSlot: 25,
    isCustom: false,
    status: "active",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Tour(
    id: "t6",
    name: "Huế - Đà Nẵng",
    description: {"detail": "Di sản miền Trung"},
    price: 3500000,
    maxSlot: 18,
    isCustom: false,
    status: "active",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
];

final tourInstances = [
  TourInstance(
    id: "i1",
    tourId: "t1",
    startDate: DateTime(2026, 5, 1),
    endDate: DateTime(2026, 5, 4),
    status: "scheduled",
  ),
  TourInstance(
    id: "i2",
    tourId: "t1",
    startDate: DateTime(2026, 6, 10),
    endDate: DateTime(2026, 6, 13),
    status: "scheduled",
  ),
  TourInstance(
    id: "i3",
    tourId: "t2",
    startDate: DateTime(2026, 7, 5),
    endDate: DateTime(2026, 7, 9),
    status: "scheduled",
  ),
  TourInstance(
    id: "i4",
    tourId: "t3",
    startDate: DateTime(2026, 8, 1),
    endDate: DateTime(2026, 8, 6),
    status: "scheduled",
  ),
  TourInstance(
    id: "i5",
    tourId: "t4",
    startDate: DateTime(2026, 9, 3),
    endDate: DateTime(2026, 9, 6),
    status: "scheduled",
  ),
  TourInstance(
    id: "i6",
    tourId: "t5",
    startDate: DateTime(2026, 4, 15),
    endDate: DateTime(2026, 4, 18),
    status: "completed",
  ),
  TourInstance(
    id: "i7",
    tourId: "t6",
    startDate: DateTime(2026, 10, 10),
    endDate: DateTime(2026, 10, 14),
    status: "scheduled",
  ),
  TourInstance(
    id: "i8",
    tourId: "t2",
    startDate: DateTime(2026, 11, 20),
    endDate: DateTime(2026, 11, 25),
    status: "cancelled",
  ),
  TourInstance(
    id: "i9",
    tourId: "t3",
    startDate: DateTime(2026, 12, 1),
    endDate: DateTime(2026, 12, 5),
    status: "scheduled",
  ),
  TourInstance(
    id: "i10",
    tourId: "t4",
    startDate: DateTime(2026, 3, 10),
    endDate: DateTime(2026, 3, 13),
    status: "completed",
  ),
];

final combinedList = tourInstances.map((instance) {
  final tour = tours.firstWhere((t) => t.id == instance.tourId);
  return TourCombined(tour: tour, instance: instance);
}).toList();
