class Booking {
  final String id;
  final String tourName;
  final String location;
  final String image;
  final DateTime startDate;
  final DateTime endDate;
  final int adults;
  final int children;
  final double totalPrice;
  final BookingStatus status;
  final ContactInfo contact;
  final List<Passenger> passengers;
  final String? note;

  Booking({
    required this.id,
    required this.tourName,
    required this.location,
    required this.image,
    required this.startDate,
    required this.endDate,
    required this.adults,
    required this.children,
    required this.totalPrice,
    required this.status,
    required this.contact,
    required this.passengers,
    this.note,
  });
}

class ContactInfo {
  final String name;
  final String email;

  ContactInfo({required this.name, required this.email});
}

class Passenger {
  final String name;
  final String idNumber;
  final PassengerType type;

  Passenger({required this.name, required this.idNumber, required this.type});
}

enum PassengerType { adult, child }

enum BookingStatus { pending, paid, completed, cancelled }
