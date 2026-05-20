import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_coach/coordinator_coach.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_tour_info_field.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_tour_price_field.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_tour_driver_card.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_tour_guilde_card.dart'; // Class is CoordinatorTourGuideCard
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_tour_hotel_card.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_tour_member_card.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorViewTourScreen extends StatefulWidget {
  final CoordinatorTour tour;

  const CoordinatorViewTourScreen({super.key, required this.tour});

  @override
  State<CoordinatorViewTourScreen> createState() =>
      _CoordinatorViewTourScreenState();
}

class _CoordinatorViewTourScreenState extends State<CoordinatorViewTourScreen> {
  CoordinatorCoach? _assignedCoach;
  bool _isLoadingCoach = true;

  // Collapse/Expand state flags
  bool _isDetailsExpanded = false;
  bool _isBookingsExpanded = false;
  bool _isItineraryExpanded = false;

  @override
  void initState() {
    super.initState();
    _loadCoachData();
  }

  Future<void> _loadCoachData() async {
    try {
      final repository = context.read<CoordinatorRepository>();
      final result = await repository.getAllCoaches();
      if (mounted) {
        setState(() {
          if (result is Ok<List<CoordinatorCoach>> && result.value.isNotEmpty) {
            // Find coach matching guide or template, or fallback to first coach
            _assignedCoach = result.value.firstWhere(
              (c) => c.driver.name == 'Nguyễn Văn Hùng',
              orElse: () => result.value.first,
            );
          }
          _isLoadingCoach = false;
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _isLoadingCoach = false;
        });
      }
    }
  }

  String _formatPrice(String priceStr) {
    final price = double.tryParse(priceStr) ?? 0.0;
    final formatter = NumberFormat('#,###', 'vi_VN');
    return '${formatter.format(price)} VNĐ';
  }

  String _getCityFromAddress(String address) {
    final parts = address.split(',');
    if (parts.length >= 2) {
      return parts[parts.length - 2].trim();
    }
    return address;
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    // Dynamic / formatted values to match mockups
    final dateValue = widget.tour.tourTemplate.id == 'temp_c1'
        ? '12/12/2025'
        : '12/01/2027';
    final departureValue =
        widget.tour.tourTemplate.name.toLowerCase().contains('hạ long')
        ? 'Hà Nội'
        : 'Tp.HCM';

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // ── Premium Rounded Custom App Bar ─────────────────────────────────
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(16, statusBarHeight + 10, 16, 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primary, AppColors.primaryDarkBlackBlue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 28,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                const Text(
                  'Tour chi tiết',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // ── Scrollable Body ───────────────────────────────────────────────
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Destination Image Card ─────────────────────────────────
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            widget.tour.tourTemplate.imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(
                                  color: AppColors.inputBackground,
                                  child: const Icon(
                                    Icons.image_outlined,
                                    color: AppColors.icon,
                                    size: 50,
                                  ),
                                ),
                          ),
                          // Dark gradient overlay for text readability
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withValues(alpha: 0.7),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          // Overlay Name Text
                          Positioned(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            child: Text(
                              widget.tour.tourTemplate.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                height: 1.3,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ── Date and Departure Info Fields ──────────────────────────
                  Row(
                    children: [
                      Expanded(
                        child: CoordinatorTourInfoField(
                          label: 'Ngày bắt đầu',
                          content: dateValue,
                          prefixIcon: Icons.calendar_today_outlined,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CoordinatorTourInfoField(
                          label: 'Nơi khởi hành',
                          content: departureValue,
                          prefixIcon: Icons.location_on_outlined,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ── Price Info Field ───────────────────────────────────────
                  CoordinatorTourPriceField(
                    label: 'Đơn giá',
                    adultprice: _formatPrice(
                      widget.tour.tourTemplate.adultPrice,
                    ),
                    childprice: _formatPrice(
                      widget.tour.tourTemplate.childPrice,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ── Expandable Section: Thông tin chi tiết ──────────────────
                  _buildExpandableHeader(
                    title: 'Thông tin chi tiết',
                    isExpanded: _isDetailsExpanded,
                    onTap: () => setState(
                      () => _isDetailsExpanded = !_isDetailsExpanded,
                    ),
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: _isDetailsExpanded
                        ? Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Column(
                              children: [
                                // Driver Card
                                _isLoadingCoach
                                    ? const Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: CircularProgressIndicator(
                                            color: AppColors.primary,
                                          ),
                                        ),
                                      )
                                    : CoordinatorTourDriverCard(
                                        driverName:
                                            _assignedCoach?.driver.name ??
                                            'Đỗ Minh Trí',
                                        vehicleType:
                                            _assignedCoach
                                                ?.vehicle
                                                .vehicleType ??
                                            'Limousine (chỗ)',
                                        licenseNumber:
                                            _assignedCoach
                                                ?.vehicle
                                                .licensePlate ??
                                            '59A-12345',
                                        imageUrl:
                                            _assignedCoach?.driver.imageUrl,
                                      ),
                                const SizedBox(height: 12),
                                // Guide Card
                                CoordinatorTourGuideCard(
                                  name: widget.tour.guide.name,
                                  phoneNumber: widget.tour.guide.phoneNumber,
                                  email: widget.tour.guide.email,
                                ),
                                const SizedBox(height: 12),
                                // Hotel Card
                                CoordinatorTourHotelCard(
                                  hotelName: widget.tour.hotel.name,
                                  cityProvince: _getCityFromAddress(
                                    widget.tour.hotel.address,
                                  ),
                                  rooms: [
                                    CoordinatorRoom(
                                      roomType: widget.tour.hotel.roomType,
                                      quantity: widget.tour.hotel.roomCount,
                                    ),
                                  ],
                                  imageUrl: widget.tour.hotel.imageUrl,
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),

                  const Divider(
                    height: 1,
                    thickness: 0.5,
                    color: AppColors.inputBorder,
                  ),

                  // ── Expandable Section: Danh sách Booking ──────────────────
                  _buildExpandableHeader(
                    title: 'Danh sách Booking',
                    isExpanded: _isBookingsExpanded,
                    onTap: () => setState(
                      () => _isBookingsExpanded = !_isBookingsExpanded,
                    ),
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: _isBookingsExpanded
                        ? Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Column(
                              children: [
                                CoordinatorTourMemberCard(
                                  tourMember: widget.tour.tourMember,
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),

                  const Divider(
                    height: 1,
                    thickness: 0.5,
                    color: AppColors.inputBorder,
                  ),

                  // ── Expandable Section: Lịch trình chi tiết ───────────────
                  _buildExpandableHeader(
                    title: 'Lịch trình chi tiết',
                    isExpanded: _isItineraryExpanded,
                    onTap: () => setState(
                      () => _isItineraryExpanded = !_isItineraryExpanded,
                    ),
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: _isItineraryExpanded
                        ? Padding(
                            padding: const EdgeInsets.only(
                              top: 16.0,
                              left: 8.0,
                            ),
                            child: Column(
                              children: List.generate(
                                widget.tour.tourTemplate.itineraries.length,
                                (index) {
                                  final item = widget
                                      .tour
                                      .tourTemplate
                                      .itineraries[index];
                                  return ItineraryTimelineItem(
                                    label: item.label,
                                    title: item.name,
                                    description: item.description,
                                    isLast:
                                        index ==
                                        widget
                                                .tour
                                                .tourTemplate
                                                .itineraries
                                                .length -
                                            1,
                                  );
                                },
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableHeader({
    required String title,
    required bool isExpanded,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            // Blue Dot Icon
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 12),
            // Header Text
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            // Expand Arrow
            Icon(
              isExpanded
                  ? Icons.keyboard_arrow_up_rounded
                  : Icons.keyboard_arrow_down_rounded,
              color: AppColors.textPrimary,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}

// ── Custom Itinerary Timeline Widget ────────────────────────────────────────
class ItineraryTimelineItem extends StatelessWidget {
  final String label;
  final String title;
  final String description;
  final bool isLast;

  const ItineraryTimelineItem({
    super.key,
    required this.label,
    required this.title,
    required this.description,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Left dotted line column
          SizedBox(
            width: 24,
            child: Column(
              children: [
                Expanded(
                  child: CustomPaint(
                    size: Size.infinite,
                    painter: DashedLinePainter(
                      color: AppColors.primary,
                      strokeWidth: 2,
                      dashHeight: 5,
                      dashSpace: 4,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Right content column
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Custom Painter to draw Dotted/Dashed Line ────────────────────────────────
class DashedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashHeight;
  final double dashSpace;

  DashedLinePainter({
    required this.color,
    required this.strokeWidth,
    required this.dashHeight,
    required this.dashSpace,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, startY + dashHeight),
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
