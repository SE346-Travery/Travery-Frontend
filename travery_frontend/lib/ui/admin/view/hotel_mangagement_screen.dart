import 'package:flutter/material.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/hotel_card.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Demo data model
// ─────────────────────────────────────────────────────────────────────────────

class _HotelData {
  const _HotelData({
    required this.name,
    required this.district,
    required this.location,
    required this.roomCount,
    required this.occupancyRate,
    required this.rating,
    this.imageUrl,
  });

  final String name;
  final String district;
  final String location;
  final int roomCount;
  final double occupancyRate;
  final double rating;
  final String? imageUrl;
}

// ─────────────────────────────────────────────────────────────────────────────
// Screen
// ─────────────────────────────────────────────────────────────────────────────

class HotelManagementScreen extends StatefulWidget {
  const HotelManagementScreen({super.key});

  @override
  State<HotelManagementScreen> createState() => _HotelManagementScreenState();
}

class _HotelManagementScreenState extends State<HotelManagementScreen> {
  static const _allHotels = <_HotelData>[
    _HotelData(
      name: 'Grand Diamond Saigon',
      district: 'Quận 1',
      location: 'TP. Hồ Chí Minh',
      roomCount: 120,
      occupancyRate: 0.92,
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1566073771259-4e6a850e645b?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80',
    ),
    _HotelData(
      name: 'Coastal Breeze Resort',
      district: 'Ngũ Hành Sơn',
      location: 'Đà Nẵng',
      roomCount: 85,
      occupancyRate: 0.78,
      rating: 4.9,
    ),
    _HotelData(
      name: 'Urban Sky Suites',
      district: 'Hoàn Kiếm',
      location: 'Hà Nội',
      roomCount: 45,
      occupancyRate: 0.64,
      rating: 4.2,
    ),
    _HotelData(
      name: 'Pine Valley Retreat',
      district: 'Đà Lạt',
      location: 'Lâm Đồng',
      roomCount: 30,
      occupancyRate: 0.88,
      rating: 4.9,
    ),
    _HotelData(
      name: 'Pearl Island Resort',
      district: 'Phú Quốc',
      location: 'Kiên Giang',
      roomCount: 210,
      occupancyRate: 0.45,
      rating: 4.7,
    ),
    _HotelData(
      name: 'Ancient Town Villas',
      district: 'Hội An',
      location: 'Quảng Nam',
      roomCount: 18,
      occupancyRate: 1.0,
      rating: 4.6,
    ),
    _HotelData(
      name: 'Cliff Edge Hotel',
      district: 'Nha Trang',
      location: 'Khánh Hòa',
      roomCount: 65,
      occupancyRate: 0.52,
      rating: 4.4,
    ),
    _HotelData(
      name: 'Metropolis Lodge',
      district: 'Bình Thạnh',
      location: 'TP. HCM',
      roomCount: 54,
      occupancyRate: 0.71,
      rating: 4.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final activeCount = _allHotels.length;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── App bar ──────────────────────────────────────────────────────
            _buildAppBar(),

            // ── Page header ──────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Khách sạn hoạt động',
                    style: TextStyle(
                      fontSize: AppTextTheme.headlineLarge,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Hiện có $activeCount cơ sở đang vận hành',
                    style: TextStyle(
                      fontSize: AppTextTheme.bodySmall,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),

            // ── Hotel list ───────────────────────────────────────────────────
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 100),
                itemCount: _allHotels.length,
                separatorBuilder: (_, __) => const Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColors.inputBorder,
                ),
                itemBuilder: (context, index) {
                  final h = _allHotels[index];
                  return HotelCard(
                    name: h.name,
                    district: h.district,
                    location: h.location,
                    roomCount: h.roomCount,
                    occupancyRate: h.occupancyRate,
                    rating: h.rating,
                    imageUrl: h.imageUrl,
                    onTap: () => _onHotelTap(h),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // ── FAB ──────────────────────────────────────────────────────────────────
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddHotel,
        backgroundColor: AppColors.primary,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Icon(Icons.add_rounded, color: Colors.white),
      ),
    );
  }

  // ── App bar ──────────────────────────────────────────────────────────────────
  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.grid_view_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Travery Admin',
            style: TextStyle(
              fontSize: AppTextTheme.headlineMedium,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  // ── Handlers ─────────────────────────────────────────────────────────────────
  void _onHotelTap(_HotelData h) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Xem chi tiết: ${h.name}'),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _onAddHotel() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Thêm khách sạn mới'),
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
