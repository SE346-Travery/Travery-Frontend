import '../../data/seed_models/tour/tour.dart';
import '../../data/seed_models/tour_image/tour_image.dart';
import '../../data/seed_models/tour_instance/tour_instance.dart';
import '../../data/seed_models/tour_booking/tour_booking.dart';
import '../../data/seed_models/tour_booking_member/tour_booking_member.dart';
import '../../data/seed_models/tour_review/tour_review.dart';

final List<Tour> mockTours = [
  Tour(
    id: 'tour_1',
    name: 'Đà Nẵng - Hội An',
    description: {'overview': 'Khám phá Đà Nẵng - Hội An - Bà Nà Hills'},

    pricePerAdult: 2500000,
    pricePerChild: 1500000,

    maxCapacity: 20,
    minCapacity: 5,

    isCustom: false,
    status: TourStatus.active,

    createdAt: DateTime.parse('2025-01-01T10:00:00Z'),

    images: [
      TourImage(
        id: 'img_1',
        tourId: 'tour_1',
        imageUrl: 'https://picsum.photos/400?random=1',
        displayOrder: 1,
      ),
      TourImage(
        id: 'img_2',
        tourId: 'tour_1',
        imageUrl: 'https://picsum.photos/400?random=2',
        displayOrder: 2,
      ),
      TourImage(
        id: 'img_3',
        tourId: 'tour_1',
        imageUrl: 'https://picsum.photos/400?random=3',
        displayOrder: 3,
      ),
    ],

    instances: [
      TourInstance(
        id: 'ins_1_1',
        tourId: 'tour_1',
        startDate: DateTime.parse('2025-06-01T08:00:00Z'),
        endDate: DateTime.parse('2025-06-03T18:00:00Z'),
        status: TourInstanceStatus.scheduled,
      ),
      TourInstance(
        id: 'ins_1_2',
        tourId: 'tour_1',
        startDate: DateTime.parse('2025-06-10T08:00:00Z'),
        endDate: DateTime.parse('2025-06-12T18:00:00Z'),
        status: TourInstanceStatus.scheduled,
      ),
      TourInstance(
        id: 'ins_1_3',
        tourId: 'tour_1',
        startDate: DateTime.parse('2025-05-01T08:00:00Z'),
        endDate: DateTime.parse('2025-05-03T18:00:00Z'),
        status: TourInstanceStatus.completed,
        bookings: [
          TourBooking(
            id: 'book_1',
            userId: 'user_1',
            tourInstanceId: 'ins_1_3',
            passengerName: 'Nguyen Van A',
            passengerPhone: '0900000001',
            adultCount: 2,
            childCount: 1,
            totalPrice: 6500000,
            status: BookingStatus.completed,
            members: [
              TourBookingMember(
                id: 'm1',
                tourBookingId: 'book_1',
                fullName: 'Nguyen Van A',
                isChild: false,
                status: BookingMemberStatus.active,
              ),
              TourBookingMember(
                id: 'm2',
                tourBookingId: 'book_1',
                fullName: 'Nguyen Van B',
                isChild: true,
                status: BookingMemberStatus.active,
              ),
            ],
            review: TourReview(
              id: 'rev_1',
              tourBookingId: 'book_1',
              rating: 5,
              comment: 'Rất tốt',
            ),
          ),
        ],
      ),
    ],
  ),

  Tour(
    id: 'tour_2',
    name: 'Phú Quốc - Thiên đường biển đảo',
    description: {'overview': 'Resort 5 sao, biển xanh cát trắng'},

    pricePerAdult: 4500000,
    pricePerChild: 3000000,

    maxCapacity: 30,
    minCapacity: 10,

    isCustom: false,
    status: TourStatus.active,

    createdAt: DateTime.parse('2025-02-10T10:00:00Z'),

    images: [
      TourImage(
        id: 'img_4',
        tourId: 'tour_2',
        imageUrl: 'https://picsum.photos/400?random=4',
        displayOrder: 1,
      ),
      TourImage(
        id: 'img_5',
        tourId: 'tour_2',
        imageUrl: 'https://picsum.photos/400?random=5',
        displayOrder: 2,
      ),
    ],

    instances: [
      TourInstance(
        id: 'ins_2_1',
        tourId: 'tour_2',
        startDate: DateTime.parse('2025-07-10T08:00:00Z'),
        endDate: DateTime.parse('2025-07-13T18:00:00Z'),
        status: TourInstanceStatus.scheduled,
      ),
      TourInstance(
        id: 'ins_2_2',
        tourId: 'tour_2',
        startDate: DateTime.parse('2025-08-01T08:00:00Z'),
        endDate: DateTime.parse('2025-08-04T18:00:00Z'),
        status: TourInstanceStatus.scheduled,
        bookings: [
          TourBooking(
            id: 'book_2',
            userId: 'user_2',
            tourInstanceId: 'ins_2_2',
            passengerName: 'Le Van B',
            passengerPhone: '0900000002',
            adultCount: 3,
            childCount: 2,
            totalPrice: 12000000,
            status: BookingStatus.confirmed,
          ),
        ],
      ),
      TourInstance(
        id: 'ins_2_3',
        tourId: 'tour_2',
        startDate: DateTime.parse('2025-06-01T08:00:00Z'),
        endDate: DateTime.parse('2025-06-04T18:00:00Z'),
        status: TourInstanceStatus.completed,
      ),
    ],
  ),

  Tour(
    id: 'tour_3',
    name: 'Hà Nội - Sapa săn mây',
    description: {'overview': 'Trải nghiệm lạnh, săn mây Fansipan'},

    pricePerAdult: 3800000,
    pricePerChild: 2500000,

    maxCapacity: 25,
    minCapacity: 8,

    isCustom: false,
    status: TourStatus.expired,

    createdAt: DateTime.parse('2024-12-01T10:00:00Z'),

    images: [
      TourImage(
        id: 'img_6',
        tourId: 'tour_3',
        imageUrl: 'https://picsum.photos/400?random=6',
        displayOrder: 1,
      ),
    ],

    instances: [
      TourInstance(
        id: 'ins_3_1',
        tourId: 'tour_3',
        startDate: DateTime.parse('2024-12-20T08:00:00Z'),
        endDate: DateTime.parse('2024-12-23T18:00:00Z'),
        status: TourInstanceStatus.completed,
      ),
      TourInstance(
        id: 'ins_3_2',
        tourId: 'tour_3',
        startDate: DateTime.parse('2024-11-10T08:00:00Z'),
        endDate: DateTime.parse('2024-11-13T18:00:00Z'),
        status: TourInstanceStatus.completed,
        bookings: [
          TourBooking(
            id: 'book_3',
            userId: 'user_3',
            tourInstanceId: 'ins_3_2',
            passengerName: 'Tran Van C',
            passengerPhone: '0900000003',
            adultCount: 1,
            childCount: 0,
            totalPrice: 3800000,
            status: BookingStatus.completed,
            review: TourReview(
              id: 'rev_3',
              tourBookingId: 'book_3',
              rating: 4,
              comment: 'Ổn',
            ),
          ),
        ],
      ),
    ],
  ),
];
