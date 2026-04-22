import 'package:flutter/material.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/tour_card.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Demo data model
// ─────────────────────────────────────────────────────────────────────────────

class _TourData {
  const _TourData({
    required this.rank,
    required this.tourName,
    required this.category,
    required this.trend,
    this.imageUrl,
  });

  final int rank;
  final String tourName;
  final String category;
  final TourTrend trend;
  final String? imageUrl;
}

// ─────────────────────────────────────────────────────────────────────────────
// Screen
// ─────────────────────────────────────────────────────────────────────────────

class TourManagementScreen extends StatefulWidget {
  const TourManagementScreen({super.key});

  @override
  State<TourManagementScreen> createState() => _TourManagementScreenState();
}

class _TourManagementScreenState extends State<TourManagementScreen> {
  static const _allTours = <_TourData>[
    _TourData(
      rank: 1,
      tourName: 'Hạ Long – Cát Bà 3N2D',
      category: 'Cruise & Luxury Resort',
      trend: TourTrend.up,
      imageUrl:
          'https://images.unsplash.com/photo-1543726016-0a9e60a594e4?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80',
    ),
    _TourData(
      rank: 2,
      tourName: 'Phố cổ Hội An – Đà Nẵng',
      category: 'Văn hóa & Ẩm thực',
      trend: TourTrend.up,
    ),
    _TourData(
      rank: 3,
      tourName: 'Sapa – Đỉnh Fansipan',
      category: 'Trekking & Trải nghiệm',
      trend: TourTrend.up,
    ),
    _TourData(
      rank: 4,
      tourName: 'Phú Quốc Pearl Island',
      category: 'Nghỉ dưỡng 5 sao',
      trend: TourTrend.down,
    ),
    _TourData(
      rank: 5,
      tourName: 'Cố đô Huế – Lăng tẩm',
      category: 'Lịch sử & Di sản',
      trend: TourTrend.up,
    ),
  ];

  // Summary stats (demo)
  static const int _completed = 1284;
  static const int _ongoing = 42;
  static const double _occupancyRate = 94;
  static const double _avgRating = 4.8;
  static const int _cancellations = 2;

  // Period filter index: 0 = Tháng này, 1 = Tuần này, 2 = Năm này
  int _periodIndex = 0;
  static const _periods = ['Tháng này', 'Tuần này', 'Năm này'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── App bar ──────────────────────────────────────────────────────
            _buildAppBar(),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ── Summary stat cards ─────────────────────────────────
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: _SummaryCard(
                              label: 'HOÀN THÀNH',
                              value: _formatNumber(_completed),
                              badge: '+12%',
                              badgeColor: AppColors.success,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _SummaryCard(
                              label: 'ĐANG ĐI',
                              value: '$_ongoing',
                              badge: 'Hiện tại',
                              badgeColor: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // ── Ranking section header ─────────────────────────────
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Xếp hạng Tour theo doanh thu',
                            style: TextStyle(
                              fontSize: AppTextTheme.bodyLarge,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          // Period picker
                          _PeriodPicker(
                            periods: _periods,
                            selectedIndex: _periodIndex,
                            onSelected: (i) => setState(() => _periodIndex = i),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ── Tour ranking list ──────────────────────────────────
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _allTours.length,
                        separatorBuilder: (_, _) => const Divider(
                          height: 1,
                          thickness: 1,
                          indent: 16,
                          endIndent: 16,
                          color: AppColors.inputBorder,
                        ),
                        itemBuilder: (context, index) {
                          final t = _allTours[index];
                          return TourCard(
                            rank: t.rank,
                            tourName: t.tourName,
                            category: t.category,
                            trend: t.trend,
                            imageUrl: t.imageUrl,
                            onTap: () => _onTourTap(t),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 20),

                    // ── Bottom stat row ────────────────────────────────────
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _BottomStat(
                              label: 'LẤP ĐẦY',
                              value: '$_occupancyRate%',
                            ),
                            _buildDivider(),
                            _BottomStat(
                              label: 'ĐÁNH GIÁ',
                              value: '$_avgRating',
                              icon: Icons.star_rounded,
                              iconColor: AppColors.warning,
                            ),
                            _buildDivider(),
                            _BottomStat(
                              label: 'HỦY (24H)',
                              value: _cancellations.toString().padLeft(2, '0'),
                              valueColor: AppColors.error,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() =>
      Container(height: 36, width: 1, color: AppColors.inputBorder);

  // ── App bar ───────────────────────────────────────────────────────────────
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

  // ── Helpers ───────────────────────────────────────────────────────────────
  String _formatNumber(int number) {
    if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(number % 1000 == 0 ? 0 : 1)}K';
    }
    return '$number';
  }

  void _onTourTap(_TourData t) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Xem chi tiết: ${t.tourName}'),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Summary card (HOÀN THÀNH / ĐANG ĐI)
// ─────────────────────────────────────────────────────────────────────────────

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.label,
    required this.value,
    required this.badge,
    required this.badgeColor,
  });

  final String label;
  final String value;
  final String badge;
  final Color badgeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: AppTextTheme.bodySmall,
              fontWeight: FontWeight.w600,
              color: AppColors.textSecondary,
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: AppTextTheme.headlineLarge,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                  height: 1,
                ),
              ),
              const SizedBox(width: 6),
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: badgeColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    badge,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: badgeColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Period picker button
// ─────────────────────────────────────────────────────────────────────────────

class _PeriodPicker extends StatelessWidget {
  const _PeriodPicker({
    required this.periods,
    required this.selectedIndex,
    required this.onSelected,
  });

  final List<String> periods;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showPicker(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: AppColors.inputBackground,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.inputBorder),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.calendar_today_outlined,
              size: 13,
              color: AppColors.textSecondary,
            ),
            const SizedBox(width: 4),
            Text(
              periods[selectedIndex],
              style: TextStyle(
                fontSize: AppTextTheme.bodySmall,
                fontWeight: FontWeight.w600,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.inputBorder,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 12),
              ...List.generate(periods.length, (i) {
                final selected = i == selectedIndex;
                return ListTile(
                  title: Text(
                    periods[i],
                    style: TextStyle(
                      fontSize: AppTextTheme.bodyMedium,
                      fontWeight: selected
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: selected
                          ? AppColors.primary
                          : AppColors.textPrimary,
                    ),
                  ),
                  trailing: selected
                      ? Icon(Icons.check_rounded, color: AppColors.primary)
                      : null,
                  onTap: () {
                    onSelected(i);
                    Navigator.pop(context);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Bottom stat item
// ─────────────────────────────────────────────────────────────────────────────

class _BottomStat extends StatelessWidget {
  const _BottomStat({
    required this.label,
    required this.value,
    this.icon,
    this.iconColor,
    this.valueColor,
  });

  final String label;
  final String value;
  final IconData? icon;
  final Color? iconColor;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: AppTextTheme.bodySmall,
            fontWeight: FontWeight.w600,
            color: AppColors.textSecondary,
            letterSpacing: 0.3,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: AppTextTheme.headlineMedium,
                fontWeight: FontWeight.bold,
                color: valueColor ?? AppColors.textPrimary,
                height: 1,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 4),
              Icon(icon, size: 18, color: iconColor ?? AppColors.warning),
            ],
          ],
        ),
      ],
    );
  }
}
