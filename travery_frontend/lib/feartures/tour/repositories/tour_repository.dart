import '../../tour/model/tour_model.dart';

class TourRepository {
  List<Tour> getMockTours() {
    return [
      Tour(
        id: '1',
        title: 'Khám phá Vịnh Hạ Long - Nghỉ dưỡng trên Du thuyền 5 sao',
        thumbnail: 'https://picsum.photos/500/300?random=1',
        departureLocation: 'Hà Nội',
        destination: 'Vịnh Hạ Long',
        duration: '2N1Đ',
        departureDate: DateTime(2026, 10, 15),
        price: 3250000,
        availableSlots: 10,
        totalSlots: 20,
        rating: 4.9,
        itinerary: [
          Itinerary(
            day: 1,
            title: 'Khám phá Hang Sửng Sốt',
            description:
                'Tham quan Hang Sửng Sốt với hệ thống thạch nhũ kỳ ảo và trải nghiệm cảnh quan Vịnh Hạ Long.',
            image: 'https://picsum.photos/400/200?random=12',
          ),
          Itinerary(
            day: 2,
            title: 'Bình minh trên Vịnh & Thư giãn',
            description:
                'Bài tập Tai Chi trên boong tàu, thưởng thức bình minh rạng rỡ và chinh phục đỉnh Ti Tốp hoặc tắm biển.',
            image: 'https://picsum.photos/400/200?random=13',
          ),
        ],
      ),
      Tour(
        id: '2',
        title: 'Hành trình Sapa - Chinh phục đỉnh Fansipan hùng vĩ',
        thumbnail: 'https://picsum.photos/500/300?random=2',
        departureLocation: 'Hà Nội',
        destination: 'Sapa',
        duration: '3N2Đ',
        departureDate: DateTime(2026, 10, 20),
        price: 2890000,
        availableSlots: 5,
        totalSlots: 15,
        rating: 4.8,
        itinerary: [
          Itinerary(
            day: 1,
            title: 'Khởi hành tới Sapa',
            description:
                'Xuất phát từ Hà Nội bằng xe khách hoặc limousine, check-in khách sạn tại Sapa.',
            image: 'https://picsum.photos/400/200?random=21',
          ),
          Itinerary(
            day: 2,
            title: 'Leo Fansipan & Tham quan bản làng',
            description:
                'Chinh phục đỉnh Fansipan, khám phá các bản làng truyền thống và trải nghiệm văn hóa địa phương.',
            image: 'https://picsum.photos/400/200?random=22',
          ),
          Itinerary(
            day: 3,
            title: 'Tham quan thị trấn & trở về',
            description:
                'Tham quan chợ Sapa, thưởng thức ẩm thực địa phương trước khi trở về Hà Nội.',
            image: 'https://picsum.photos/400/200?random=23',
          ),
        ],
      ),
      Tour(
        id: '3',
        title: 'Đà Nẵng - Hội An - Bà Nà Hills (Cầu Vàng)',
        thumbnail: 'https://picsum.photos/500/300?random=3',
        departureLocation: 'TP.HCM',
        destination: 'Đà Nẵng',
        duration: '3N2Đ',
        departureDate: DateTime(2026, 11, 5),
        price: 3590000,
        availableSlots: 8,
        totalSlots: 20,
        rating: 4.7,
        itinerary: [
          Itinerary(
            day: 1,
            title: 'Khởi hành & Tham quan Đà Nẵng',
            description:
                'Đến Đà Nẵng, tham quan Bãi biển Mỹ Khê và ăn tối tại nhà hàng địa phương.',
            image: 'https://picsum.photos/400/200?random=31',
          ),
          Itinerary(
            day: 2,
            title: 'Bà Nà Hills & Cầu Vàng',
            description:
                'Tham quan khu du lịch Bà Nà Hills, chụp hình tại Cầu Vàng, trải nghiệm các trò chơi giải trí.',
            image: 'https://picsum.photos/400/200?random=32',
          ),
          Itinerary(
            day: 3,
            title: 'Hội An & Trở về',
            description:
                'Tham quan phố cổ Hội An, mua sắm và thưởng thức đặc sản trước khi về lại TP.HCM.',
            image: 'https://picsum.photos/400/200?random=33',
          ),
        ],
      ),
    ];
  }

  Tour? getTourById(String id) {
    try {
      return getMockTours().firstWhere((tour) => tour.id == id);
    } catch (e) {
      return null;
    }
  }
}
