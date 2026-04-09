import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/user/tour/tour_view/tour_list/view/widgets/appbar.dart';

import '../../../../../../../data/fake_data/booking_fake_data.dart';
import '../../../../../../../data/fake_data/tour_data.dart';
import '../../../../../../../data/model/booking_tour_model.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../widgets/policy.dart';
import '../widgets/refund_summary_card.dart';
import '../widgets/warningbanner.dart';
import 'tour_booking_cancel_success_page.dart';

class CancelBookingPage extends StatefulWidget {
  final String bookingId;

  const CancelBookingPage({super.key, required this.bookingId});

  @override
  State<CancelBookingPage> createState() => _CancelBookingPageState();
}

class _CancelBookingPageState extends State<CancelBookingPage> {
  late Map<String, dynamic> bookingData;
  final TextEditingController _reasonController = TextEditingController();

  double refundPercentage = 0;
  double refundAmount = 0;
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();

    // Tìm kiếm dữ liệu trong booking fake
    bookingData = fakeBookings.firstWhere(
      (element) => element['id'] == widget.bookingId,
      orElse: () => fakeBookings.first,
    );

    // tính refund
    _calculaterefund();
  }

  // test chính sách refund
  void _calculaterefund() {
    totalPrice = (bookingData['total_price'] as double) * 10000;
    final instance = tourInstances.firstWhere(
      (i) => i.id == bookingData['instance_id'],
      orElse: () => tourInstances.first,
    );

    DateTime departureDate = instance.startDate;
    DateTime now = DateTime.now();

    // Tính số ngày còn lại
    int daysRemaining = departureDate.difference(now).inDays;

    if (daysRemaining >= 7) {
      refundPercentage = 1.0; // Hoàn 100%
    } else if (daysRemaining >= 3) {
      refundPercentage = 0.5; // Hoàn 50% (từ 3 đến 6 ngày)
    } else {
      refundPercentage = 0.0; // Hoàn 0% (dưới 3 ngày/72h)
    }

    refundAmount = totalPrice * refundPercentage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const BaseAppBar(title: 'Xác nhận hủy'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Warning Section
            const WarningBanner(
              title: "Thao tác này không thể hoàn tác",
              subtitle:
                  "Vui lòng xem kỹ thông tin hoàn tiền và chính sách trước khi xác nhận. Sau khi hủy, đặt chỗ của bạn sẽ bị xóa khỏi hệ thống.",
            ),

            const SizedBox(height: 32),

            RefundSummaryCard(
              totalPrice: totalPrice,
              refundAmount: refundAmount,
              percent: refundPercentage,
            ),

            const SizedBox(height: 32),

            // Policy Recap
            const PolicySection(),

            const SizedBox(height: 32),

            // Reason Input
            const Text(
              "Lý do hủy (Không bắt buộc)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _reasonController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText:
                    "Chia sẻ lý do để chúng tôi cải thiện dịch vụ tốt hơn...",
                hintStyle: const TextStyle(
                  color: AppColors.textHint,
                  fontSize: 14,
                ),
                fillColor: AppColors.surface,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.all(16),
              ),
            ),

            const SizedBox(height: 40),

            // Button Xác nhận hủy
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  final Map<String, dynamic> rawData = fakeBookings.firstWhere(
                    (b) => b['id'] == widget.bookingId,
                    orElse: () => fakeBookings.first,
                  );

                  final bookingObj = BookingTour(
                    id: rawData['id'],
                    userId: rawData['user_id'],
                    tourInstanceId: rawData['tour_instance_id'],
                    passengerName: rawData['passenger_name'],
                    passengerPhone: rawData['passenger_phone'],
                    status: rawData['status'],
                    statusRefund: rawData['status_refund'],
                    adultCount: rawData['adult_count'],
                    childCount: rawData['child_count'],
                    totalPrice: (rawData['total_price'] as double) * 10000,
                    memberList: [],
                    roomRequest: rawData['room_request'],
                    specialNotes: rawData['special_notes'],
                    responseByCoordinator: rawData['response_by_coordinator'],
                    coordinatorId: rawData['coordinatorID'],
                    cancellationReason: _reasonController.text,
                    createdAt: DateTime.parse(rawData['created_at']),
                    updatedAt: DateTime.parse(rawData['updated_at']),
                    cancelledAt: DateTime.now(),
                    noShowNote: rawData['no_show_note'],
                    noShowAt: rawData['no_show_at'] != null
                        ? DateTime.parse(rawData['no_show_at'])
                        : null,
                  );

                  final tourDataObj = combinedList.firstWhere(
                    (element) =>
                        element.instance.id == bookingData['instance_id'],
                    orElse: () => combinedList.first,
                  );

                  // Truyền cho cancel success page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CancelSuccessPage(
                        booking: bookingObj,
                        tourData: tourDataObj,
                        refundAmount: refundAmount,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.error,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "Xác nhận hủy",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Quay lại",
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
