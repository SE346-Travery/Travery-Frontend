import '../seed_models/tour/tour.dart';
import '../seed_models/tour_booking/tour_booking.dart';
import '../seed_models/tour_booking_member/tour_booking_member.dart';
import '../seed_models/tour_image/tour_image.dart';
import '../seed_models/tour_instance/tour_instance.dart';
import '../seed_models/tour_review/tour_review.dart';

final List<Tour> mockTours = [
  Tour(
    id: 'tour_1',
    name: 'Tour Di sản Miền Trung: Đà Nẵng - Hội An - Huế',
    description: {'overview': 'Khám phá Đà Nẵng - Hội An - Bà Nà Hills'},
    pricePerAdult: 3500000,
    pricePerChild: 2000000,
    maxCapacity: 30,
    minCapacity: 10,
    isCustom: false,
    status: TourStatus.active,
    createdAt: DateTime.now(),
    images: [
      TourImage(
        id: 'img_1',
        tourId: 'tour_1',
        imageUrl:
            'https://images.unsplash.com/photo-1555531542-741bc8d1e72f?q=80&w=600',
        displayOrder: 1,
      ),
      TourImage(
        id: 'img_2',
        tourId: 'tour_1',
        imageUrl:
            'https://images.unsplash.com/photo-1559592413-7cec4d0cae2b?q=80&w=600',
        displayOrder: 2,
      ),
      TourImage(
        id: 'img_3',
        tourId: 'tour_1',
        imageUrl:
            'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=600',
        displayOrder: 3,
      ),
    ],
    instances: [
      TourInstance(
        id: 'ins_1_1',
        tourId: 'tour_1',
        startDate: DateTime(2025, 6, 1),
        endDate: DateTime(2025, 6, 4),
        status: TourInstanceStatus.scheduled,
      ),
      TourInstance(
        id: 'ins_1_2',
        tourId: 'tour_1',
        startDate: DateTime(2025, 6, 15),
        endDate: DateTime(2025, 6, 18),
        status: TourInstanceStatus.scheduled,
      ),
      TourInstance(
        id: 'ins_1_3',
        tourId: 'tour_1',
        startDate: DateTime(2025, 7, 1),
        endDate: DateTime(2025, 7, 4),
        status: TourInstanceStatus.scheduled,
      ),
    ],
  ),
  Tour(
    id: 'tour_2',
    name: 'Khám phá Sapa: Chinh phục đỉnh Fansipan',
    description: {'overview': 'Trải nghiệm đỉnh núi cao nhất Đông Dương'},
    pricePerAdult: 2850000,
    pricePerChild: 1800000,
    maxCapacity: 25,
    minCapacity: 8,
    isCustom: false,
    status: TourStatus.active,
    createdAt: DateTime.now(),
    images: [
      TourImage(
        id: 'img_4',
        tourId: 'tour_2',
        imageUrl:
            'https://images.unsplash.com/photo-1599424423719-74a96df44865?q=80&w=600',
        displayOrder: 1,
      ),
      TourImage(
        id: 'img_5',
        tourId: 'tour_2',
        imageUrl:
            'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?q=80&w=600',
        displayOrder: 2,
      ),
    ],
    instances: [
      TourInstance(
        id: 'ins_2_1',
        tourId: 'tour_2',
        startDate: DateTime(2025, 6, 10),
        endDate: DateTime(2025, 6, 12),
        status: TourInstanceStatus.scheduled,
      ),
      TourInstance(
        id: 'ins_2_2',
        tourId: 'tour_2',
        startDate: DateTime(2025, 6, 25),
        endDate: DateTime(2025, 6, 27),
        status: TourInstanceStatus.scheduled,
      ),
    ],
  ),
  Tour(
    id: 'tour_3',
    name: 'Phú Quốc - Thiên đường biển đảo 4N3Đ',
    description: {'overview': 'Resort 5 sao, biển xanh cát trắng'},
    pricePerAdult: 4500000,
    pricePerChild: 3000000,
    maxCapacity: 30,
    minCapacity: 10,
    isCustom: false,
    status: TourStatus.active,
    createdAt: DateTime.now(),
    images: [
      TourImage(
        id: 'img_6',
        tourId: 'tour_3',
        imageUrl:
            'https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?q=80&w=600',
        displayOrder: 1,
      ),
      TourImage(
        id: 'img_7',
        tourId: 'tour_3',
        imageUrl:
            'https://images.unsplash.com/photo-1544551763-46a013bb70d5?q=80&w=600',
        displayOrder: 2,
      ),
    ],
    instances: [
      TourInstance(
        id: 'ins_3_1',
        tourId: 'tour_3',
        startDate: DateTime(2025, 7, 10),
        endDate: DateTime(2025, 7, 13),
        status: TourInstanceStatus.scheduled,
      ),
      TourInstance(
        id: 'ins_3_2',
        tourId: 'tour_3',
        startDate: DateTime(2025, 7, 25),
        endDate: DateTime(2025, 7, 28),
        status: TourInstanceStatus.scheduled,
      ),
    ],
  ),
  Tour(
    id: 'tour_4',
    name: 'Hà Nội - Ninh Bình: Cố đô và Tràng An',
    description: {'overview': 'Khám phá di sản UNESCO Tràng An'},
    pricePerAdult: 2200000,
    pricePerChild: 1500000,
    maxCapacity: 35,
    minCapacity: 12,
    isCustom: false,
    status: TourStatus.active,
    createdAt: DateTime.now(),
    images: [
      TourImage(
        id: 'img_8',
        tourId: 'tour_4',
        imageUrl:
            'https://images.unsplash.com/photo-1528127269322-539801943592?q=80&w=600',
        displayOrder: 1,
      ),
    ],
    instances: [
      TourInstance(
        id: 'ins_4_1',
        tourId: 'tour_4',
        startDate: DateTime(2025, 6, 5),
        endDate: DateTime(2025, 6, 6),
        status: TourInstanceStatus.scheduled,
      ),
    ],
  ),
  Tour(
    id: 'tour_5',
    name: 'HCM - Cần Thơ - Châu Đốc: Miền Tây sông nước',
    description: {'overview': 'Trải nghiệm chợ nổi, miệt vườn'},
    pricePerAdult: 2800000,
    pricePerChild: 1800000,
    maxCapacity: 28,
    minCapacity: 10,
    isCustom: false,
    status: TourStatus.active,
    createdAt: DateTime.now(),
    images: [
      TourImage(
        id: 'img_9',
        tourId: 'tour_5',
        imageUrl:
            'https://images.unsplash.com/photo-1583417319070-4a69db38a482?q=80&w=600',
        displayOrder: 1,
      ),
    ],
    instances: [
      TourInstance(
        id: 'ins_5_1',
        tourId: 'tour_5',
        startDate: DateTime(2025, 6, 20),
        endDate: DateTime(2025, 6, 22),
        status: TourInstanceStatus.scheduled,
      ),
    ],
  ),
];
