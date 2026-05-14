List<String> vehicleTypes = ['Limousine', 'Giường nằm', 'Ghế ngồi'];
List<String> vehicleStatus = ['Sẵn sàng', 'Đang chạy', 'Bảo trì'];

class CoordinatorVehicle {
  final String licensePlate;
  final String vehicleType;
  final String vehicleStatus;
  final String imageUrl;

  const CoordinatorVehicle({
    required this.licensePlate,
    required this.vehicleType,
    required this.vehicleStatus,
    required this.imageUrl,
  });
}
