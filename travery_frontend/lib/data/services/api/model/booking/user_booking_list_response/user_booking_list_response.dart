class UserBookingListResponse {
  final UserBookingPageData data;

  const UserBookingListResponse({required this.data});

  factory UserBookingListResponse.fromJson(Map<String, dynamic> json) =>
      UserBookingListResponse(
        data: UserBookingPageData.fromJson(
          json['data'] as Map<String, dynamic>? ?? {},
        ),
      );
}

class UserBookingPageData {
  final int totalElements;
  final int totalPages;
  final int size;
  final List<UserBookingItem> content;
  final int number;
  final bool first;
  final bool last;
  final bool empty;

  const UserBookingPageData({
    this.totalElements = 0,
    this.totalPages = 0,
    this.size = 0,
    this.content = const [],
    this.number = 0,
    this.first = true,
    this.last = true,
    this.empty = true,
  });

  factory UserBookingPageData.fromJson(Map<String, dynamic> json) =>
      UserBookingPageData(
        totalElements: json['totalElements'] as int? ?? 0,
        totalPages: json['totalPages'] as int? ?? 0,
        size: json['size'] as int? ?? 0,
        content:
            (json['content'] as List<dynamic>?)
                ?.map(
                  (e) => UserBookingItem.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            [],
        number: json['number'] as int? ?? 0,
        first: json['first'] as bool? ?? true,
        last: json['last'] as bool? ?? true,
        empty: json['empty'] as bool? ?? true,
      );
}

class UserBookingItem {
  final String id;
  final String status;
  final double totalPrice;
  final String? paymentDeadline;
  final int memberCount;
  final String tourName;
  final String startDate;
  final String endDate;
  final String createdAt;

  const UserBookingItem({
    this.id = '',
    this.status = '',
    this.totalPrice = 0,
    this.paymentDeadline,
    this.memberCount = 0,
    this.tourName = '',
    this.startDate = '',
    this.endDate = '',
    this.createdAt = '',
  });

  factory UserBookingItem.fromJson(Map<String, dynamic> json) =>
      UserBookingItem(
        id: json['id'] as String? ?? '',
        status: json['status'] as String? ?? '',
        totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
        paymentDeadline: json['paymentDeadline'] as String?,
        memberCount: json['memberCount'] as int? ?? 0,
        tourName: json['tourName'] as String? ?? '',
        startDate: json['startDate'] as String? ?? '',
        endDate: json['endDate'] as String? ?? '',
        createdAt: json['createdAt'] as String? ?? '',
      );
}
