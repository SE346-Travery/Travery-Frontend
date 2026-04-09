import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travery_frontend/ui/user/tour/tour_view/tour_list/view/widgets/appbar.dart';

import '../../../../../../../data/model/tour_combined_model.dart';
import '../../../../../../core/themes/app_colors.dart';

class TourDetailCard extends StatefulWidget {
  final TourCombined tourCombined;
  final List<String> imageUrls;
  final VoidCallback? onBackPressed;
  final VoidCallback? onSharePressed;
  final VoidCallback? onBookPressed;

  const TourDetailCard({
    super.key,
    required this.tourCombined,
    required this.imageUrls,
    this.onBackPressed,
    this.onSharePressed,
    this.onBookPressed,
  });

  @override
  State<TourDetailCard> createState() => _TourDetailCardState();
}

class _TourDetailCardState extends State<TourDetailCard> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  String get _tourName => widget.tourCombined.tour.name;
  String get _tourDescription =>
      widget.tourCombined.tour.description?['detail'] ?? '';
  double get _tourPrice => widget.tourCombined.tour.price;
  DateTime get _startDate => widget.tourCombined.instance.startDate;
  DateTime get _endDate => widget.tourCombined.instance.endDate;

  String get _formattedPrice {
    final formatter = NumberFormat('#,###', 'vi_VN');
    return formatter.format(_tourPrice);
  }

  String get _formattedStartDate {
    return DateFormat('dd/MM/yyyy').format(_startDate);
  }

  String get _duration {
    final days = _endDate.difference(_startDate).inDays;
    final nights = days > 0 ? days - 1 : 0;
    return '$days Ngày ${nights > 0 ? '$nights Đêm' : ''}';
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: 'Chi tiết tiết Tour'),
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: _buildImageCarousel()),
              SliverToBoxAdapter(child: _buildContent()),
              const SliverToBoxAdapter(child: SizedBox(height: 120)),
            ],
          ),
          Positioned(left: 0, right: 0, bottom: 0, child: _buildFooter()),
        ],
      ),
    );
  }

  Widget _buildImageCarousel() {
    return Container(
      height: 280,
      margin: const EdgeInsets.only(top: 16),
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: widget.imageUrls.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ), 
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      24,
                    ), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      24,
                    ),
                    child: Image.network(
                      widget.imageUrls[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: AppColors.inputBackground,
                          child: Icon(
                            Icons.image_not_supported,
                            size: 64,
                            color: AppColors.textHint,
                          ),
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          color: AppColors.inputBackground,
                          child: Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primary,
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),

          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      widget.imageUrls.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        width: _currentPage == index
                            ? 12
                            : 6, // Hiệu ứng chấm dài khi chọn
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: _currentPage == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Transform.translate(
      offset: const Offset(0, -24),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitleCard(),
            const SizedBox(height: 32),
            _buildDetailSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _tourName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
              height: 1.3,
            ),
          ),

          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: _buildInfoItem(
                  icon: Icons.schedule,
                  label: 'Thời gian',
                  value: _duration,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildInfoItem(
                  icon: Icons.calendar_today,
                  label: 'Ngày khởi hành',
                  value: _formattedStartDate,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 24),
          const SizedBox(height: 8),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.textSecondary,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDetailSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'THÔNG TIN CHI TIẾT',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
            letterSpacing: 0.5,
          ),
        ),

        const SizedBox(height: 16),

        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.background.withOpacity(0.3),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.inputBorder.withOpacity(0.2)),
          ),
          child: Text(
            _tourDescription,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
              height: 1.6,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
      decoration: BoxDecoration(
        color: AppColors.surface.withOpacity(0.95),
        border: Border(
          top: BorderSide(color: AppColors.inputBorder.withOpacity(0.2)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Price
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'GIÁ TỪ',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textSecondary,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    _formattedPrice,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: AppColors.primary,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    'đ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Book Button
          Material(
            color: AppColors.buttonPrimary,
            borderRadius: BorderRadius.circular(12),
            elevation: 8,
            shadowColor: AppColors.primary.withOpacity(0.25),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: widget.onBookPressed,
              child: Container(
                height: 52,
                padding: const EdgeInsets.symmetric(horizontal: 32),
                alignment: Alignment.center,
                child: Text(
                  'Đặt tour ngay',
                  style: TextStyle(
                    color: AppColors.buttonPrimaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
