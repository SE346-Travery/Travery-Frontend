class Dashboard {
  const Dashboard({
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
  final double tourRevenueM;
  final double carRevenueM;
  final double hotelRevenueM;
  final double tourRevenueQuarterM;
  final double carRevenueQuarterM;
  final double hotelRevenueQuarterM;
}

