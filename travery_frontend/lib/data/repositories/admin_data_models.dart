/// Shared data models used by [AdminRepository] and admin ViewModels.
library;

// ─────────────────────────────────────────────────────────────────────────────
// Enums
// ─────────────────────────────────────────────────────────────────────────────

enum AccountRole { coordinator, guide, receptionist }

enum AccountStatus { active, inactive }

enum VehicleStatus { running, available }

enum TourTrend { up, down, stable }

// ─────────────────────────────────────────────────────────────────────────────
// Account
// ─────────────────────────────────────────────────────────────────────────────

class AccountData {
  const AccountData({
    required this.id,
    required this.name,
    required this.email,
    required this.employeeId,
    required this.role,
    required this.status,
    required this.joinDate,
    this.avatarUrl,
  });

  final String id;
  final String name;
  final String email;
  final String employeeId;
  final AccountRole role;
  final AccountStatus status;
  final DateTime joinDate;
  final String? avatarUrl;

  AccountData copyWith({
    String? id,
    String? name,
    String? email,
    String? employeeId,
    AccountRole? role,
    AccountStatus? status,
    DateTime? joinDate,
    String? avatarUrl,
  }) {
    return AccountData(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      employeeId: employeeId ?? this.employeeId,
      role: role ?? this.role,
      status: status ?? this.status,
      joinDate: joinDate ?? this.joinDate,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Vehicle
// ─────────────────────────────────────────────────────────────────────────────

class VehicleData {
  const VehicleData({
    required this.id,
    required this.routeFrom,
    required this.routeTo,
    required this.status,
    required this.plateNumber,
    required this.vehicleType,
    required this.seatCount,
    required this.driverName,
  });

  final String id;
  final String routeFrom;
  final String routeTo;
  final VehicleStatus status;
  final String plateNumber;
  final String vehicleType;
  final int seatCount;
  final String driverName;
}

// ─────────────────────────────────────────────────────────────────────────────
// Hotel
// ─────────────────────────────────────────────────────────────────────────────

class HotelData {
  const HotelData({
    required this.id,
    required this.name,
    required this.district,
    required this.location,
    required this.roomCount,
    required this.occupancyRate,
    required this.rating,
    this.imageUrl,
  });

  final String id;
  final String name;
  final String district;
  final String location;
  final int roomCount;
  final double occupancyRate;
  final double rating;
  final String? imageUrl;
}

// ─────────────────────────────────────────────────────────────────────────────
// Tour
// ─────────────────────────────────────────────────────────────────────────────

class TourData {
  const TourData({
    required this.id,
    required this.rank,
    required this.tourName,
    required this.category,
    required this.trend,
    this.imageUrl,
  });

  final String id;
  final int rank;
  final String tourName;
  final String category;
  final TourTrend trend;
  final String? imageUrl;
}

// ─────────────────────────────────────────────────────────────────────────────
// Dashboard Stats
// ─────────────────────────────────────────────────────────────────────────────

class DashboardStats {
  const DashboardStats({
    required this.totalRevenue,
    required this.totalBooking,
    required this.netProfit,
    required this.revenueGrowthPercent,
    required this.bookingGrowthPercent,
    required this.profitGrowthPercent,
    required this.ongoingTours,
    required this.vehicleUtilizationPercent,
    required this.hotelOccupancyPercent,
    required this.systemStabilityPercent,
    required this.tourRevenueM,
    required this.carRevenueM,
    required this.hotelRevenueM,
    required this.tourRevenueQuarterM,
    required this.carRevenueQuarterM,
    required this.hotelRevenueQuarterM,
  });

  final double totalRevenue;
  final int totalBooking;
  final double netProfit;
  final double revenueGrowthPercent;
  final double bookingGrowthPercent;
  final double profitGrowthPercent;
  final int ongoingTours;
  final double vehicleUtilizationPercent;
  final double hotelOccupancyPercent;
  final double systemStabilityPercent;

  // Revenue chart data (monthly)
  final double tourRevenueM;
  final double carRevenueM;
  final double hotelRevenueM;

  // Revenue chart data (quarterly)
  final double tourRevenueQuarterM;
  final double carRevenueQuarterM;
  final double hotelRevenueQuarterM;
}

// ─────────────────────────────────────────────────────────────────────────────
// Tour Summary Stats
// ─────────────────────────────────────────────────────────────────────────────

class TourSummaryStats {
  const TourSummaryStats({
    required this.completed,
    required this.ongoing,
    required this.occupancyRate,
    required this.avgRating,
    required this.cancellations,
  });

  final int completed;
  final int ongoing;
  final double occupancyRate;
  final double avgRating;
  final int cancellations;
}
