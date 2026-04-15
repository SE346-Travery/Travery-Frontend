import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../data/seed_models/booking_payment/booking_payment_model.dart';
import '../../../../data/seed_models/tour/tour.dart';
import '../../../../data/seed_models/tour_booking/tour_booking.dart';
import '../../../../data/seed_models/tour_instance/tour_instance.dart';
import '../../../core/themes/app_colors.dart';
import '../../tour/widgets/app_bar.dart';
import 'widgets/bottom_action_bar.dart';
import 'widgets/contact_info_card.dart';
import 'widgets/member_list_card.dart';
import 'widgets/policy_checkbox.dart';
import 'widgets/special_notes_card.dart';
import 'widgets/tour_summary_card.dart';

class TourBookingReviewScreen extends StatefulWidget {
  final String? tourId;
  final String? tourInstanceId;
  final Tour? tour;
  final TourInstance? tourInstance;
  final TourBooking? booking;

  const TourBookingReviewScreen({
    super.key,
    this.tourId,
    this.tourInstanceId,
    this.tour,
    this.tourInstance,
    this.booking,
  });

  @override
  State<TourBookingReviewScreen> createState() => _TourBookingReviewScreenState();
}

class _TourBookingReviewScreenState extends State<TourBookingReviewScreen> {
  bool policyAccepted = true;
  final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');

  void _onPolicyChanged(bool? value) {
    setState(() => policyAccepted = value ?? false);
  }

  void _onEditContact() {
    debugPrint('Edit contact info');
    context.pop();
  }

  void _onEditMember(int index) {
    debugPrint('Edit member at index: $index');
    context.pop();
  }

  void _onSubmit() {
    if (!policyAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Vui lòng đồng ý với các điều khoản')));
      return;
    }

    final paymentBooking = BookingPaymentModel(
      bookingId: 'TRV-${DateTime.now().millisecondsSinceEpoch}',
      tourName: widget.tour!.name,
      departureDate: widget.tourInstance!.startDate,
      adultCount: widget.booking!.adultCount,
      childCount: widget.booking!.childCount,
      totalPrice: widget.booking!.totalPrice,
      reservationMinutes: 15,
    );

    context.push('/payment/vnpay', extra: paymentBooking);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarDefault(title: 'Kiểm tra thông tin'),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TourSummaryCard(
                  tourName: widget.tour!.name,
                  tourCode: widget.tourInstance!.id,
                  startDate: widget.tourInstance!.startDate,
                  endDate: widget.tourInstance!.endDate,
                  imageUrl: widget.tour!.images?.isNotEmpty == true ? widget.tour!.images!.first.imageUrl : null,
                ),
                const SizedBox(height: 16),
                ContactInfoCard(fullName: widget.booking!.passengerName, phoneNumber: widget.booking!.passengerPhone, onEdit: _onEditContact),
                const SizedBox(height: 16),
                MemberListCard(members: widget.booking!.members ?? [], onEditMember: _onEditMember),
                const SizedBox(height: 16),
                SpecialNotesCard(notes: widget.booking!.specialNotes ?? ''),
                const SizedBox(height: 16),
                PolicyCheckbox(isChecked: policyAccepted, onChanged: _onPolicyChanged),
              ],
            ),
          ),
          BottomActionBar(
            totalPrice: widget.booking!.totalPrice,
            totalMembers: widget.booking!.adultCount + widget.booking!.childCount,
            buttonText: 'Tiếp tục thanh toán',
            onPressed: _onSubmit,
            isEnabled: policyAccepted,
          ),
        ],
      ),
    );
  }
}
