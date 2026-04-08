import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travery_frontend/ui/user/tour/tour_view/tour_list/view/widgets/appbar.dart';

import '../../../../../../../data/model/tour_combined_model.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../widgets/member_card.dart';
import '../widgets/review_section.dart';
import '../widgets/review_tourcard.dart';

class TourBookingReviewPage extends StatefulWidget {
  final Map<String, dynamic> bookingInfo;
  final TourCombined tourData;
  const TourBookingReviewPage({
    super.key,
    required this.bookingInfo,
    required this.tourData,
  });

  @override
  State<TourBookingReviewPage> createState() => _TourBookingReviewPageState();
}

class _TourBookingReviewPageState extends State<TourBookingReviewPage> {
  bool isAgreed = true;

  @override
  Widget build(BuildContext context) {
    final info = widget.bookingInfo;
    final currencyFormat = NumberFormat('#,###', 'vi_VN');

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: BaseAppBar(title: 'Kiểm tra thông tin'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ReviewTourcard(
              title: widget.tourData.tour.name,
              imageUrl:
                  "https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg",
              date: DateFormat(
                'dd/MM/yyyy',
              ).format(widget.tourData.instance.startDate),
              duration: widget.tourData.durationText,
            ),
            const SizedBox(height: 16),
            ReviewSection(
              title: "Thông tin liên lạc",
              icon: Icons.contact_mail,
              onEdit: () => Navigator.pop(context),
              child: Column(
                children: [
                  _buildInfoRow("Họ và tên", info['passenger_name']),
                  const SizedBox(height: 12),
                  _buildInfoRow("Số điện thoại", info['passenger_phone']),
                ],
              ),
            ),
            const SizedBox(height: 16),

            ReviewSection(
              title: "Danh sách thành viên",
              icon: Icons.groups,
              child: Column(
                children: List.generate((info['member_list'] as List).length, (
                  index,
                ) {
                  final member = info['member_list'][index];
                  return MemberItemCard(
                    index: index + 1,
                    name: member['name'],
                    idCard: member['idCard'],
                    isAdult: index < info['adult_count'],
                  );
                }),
              ),
            ),
            const SizedBox(height: 16),

            ReviewSection(
              title: "Ghi chú đặc biệt",
              icon: Icons.edit_note,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  info['special_notes'].toString().isEmpty
                      ? "Không có ghi chú"
                      : info['special_notes'],
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: AppColors.textSecondary,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Checkbox(
                  value: isAgreed,
                  activeColor: AppColors.primary,
                  onChanged: (val) => setState(() => isAgreed = val!),
                ),
                const Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: "Tôi đã đọc và đồng ý với các ",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                      children: [
                        TextSpan(
                          text: "Điều khoản sử dụng",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: " và "),
                        TextSpan(
                          text: "Chính sách hoàn hủy",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
      bottomSheet: _buildBottomBar(currencyFormat, info['total_price']),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomBar(NumberFormat formatter, dynamic total) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      decoration: BoxDecoration(
        color: AppColors.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tổng thanh toán",
                style: TextStyle(fontSize: 12, color: AppColors.textSecondary),
              ),
              Text(
                "${formatter.format(total)}đ",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Expanded(
            child: ElevatedButton(
              onPressed: isAgreed
                  ? () {
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                disabledBackgroundColor: AppColors.textHint,
                minimumSize: const Size(double.infinity, 52),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tiếp tục thanh toán",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, size: 18, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
