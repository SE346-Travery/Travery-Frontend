import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../data/seed_models/tour/tour.dart';
import '../../../../data/seed_models/tour_booking/tour_booking.dart';
import '../../../../data/seed_models/tour_booking_member/tour_booking_member.dart';
import '../../../../data/seed_models/tour_instance/tour_instance.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import '../widgets/app_bar.dart';
import '../view_models/tour_booking_view_model.dart';
import 'widgets/tour_booking_widgets.dart';

class TourBookingScreen extends StatefulWidget {
  final String tourId;
  final String tourInstanceId;
  final TourBookingViewModel viewModel;

  const TourBookingScreen({
    super.key,
    required this.tourId,
    required this.tourInstanceId,
    required this.viewModel,
  });

  @override
  State<TourBookingScreen> createState() => _TourBookingScreenState();
}

class _TourBookingScreenState extends State<TourBookingScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final noteController = TextEditingController();
  late List<TextEditingController> memberNameControllers;
  late List<TextEditingController> memberIdControllers;
  final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');

  @override
  void initState() {
    super.initState();
    widget.viewModel.loadTourData(widget.tourId);
    widget.viewModel.loadTourInstanceData(widget.tourInstanceId);

    final adultCount = widget.viewModel.adultCount;
    final childCount = widget.viewModel.childCount;
    memberNameControllers = List.generate(adultCount + childCount, (_) => TextEditingController());
    memberIdControllers = List.generate(adultCount + childCount, (_) => TextEditingController());
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    noteController.dispose();
    for (final controller in memberNameControllers) {
      controller.dispose();
    }
    for (final controller in memberIdControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _syncMemberControllers() {
    final total = widget.viewModel.totalMembers;

    if (memberNameControllers.length < total) {
      memberNameControllers.addAll(List.generate(total - memberNameControllers.length, (_) => TextEditingController()));
      memberIdControllers.addAll(List.generate(total - memberIdControllers.length, (_) => TextEditingController()));
    }

    if (memberNameControllers.length > total) {
      memberNameControllers.removeRange(total, memberNameControllers.length);
      memberIdControllers.removeRange(total, memberIdControllers.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    final tour = widget.viewModel.tour;
    final tourInstance = widget.viewModel.tourInstance;

    if (widget.viewModel.isLoading || tour == null || tourInstance == null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBarDefault(title: 'Nhập thông tin'),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    final totalPrice = widget.viewModel.totalPrice;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarDefault(title: 'Nhập thông tin'),
      body: Stack(
        children: [
          Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTourSummaryCard(tour, tourInstance),
                  const SizedBox(height: 24),
                  _buildPassengerSection(),
                  const SizedBox(height: 24),
                  _buildContactSection(),
                  const SizedBox(height: 24),
                  _buildMemberListSection(),
                  const SizedBox(height: 24),
                  _buildNoteSection(),
                ],
              ),
            ),
          ),
          _buildBottomActionBar(totalPrice, tour, tourInstance),
        ],
      ),
    );
  }

  Widget _buildTourSummaryCard(Tour tour, TourInstance tourInstance) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: const Color(0xFFE2E8F0))),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(tour.images!.first.imageUrl, width: 80, height: 80, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tour.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.bodyMedium),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.confirmation_number_outlined, size: 14, color: AppColors.textSecondary),
                    const SizedBox(width: 4),
                    Text("Mã tour: ${tourInstance.id}", style: TextStyle(fontSize: 11, color: AppColors.textSecondary, fontWeight: FontWeight.w300)),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.calendar_month, size: 14, color: AppColors.textSecondary),
                    const SizedBox(width: 4),
                    Text(
                      "${DateFormat('dd/MM/yyyy').format(tourInstance.startDate)} - ${DateFormat('dd/MM/yyyy').format(tourInstance.endDate)}",
                      style: TextStyle(fontSize: 11, color: AppColors.textSecondary, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPassengerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Số lượng hành khách", style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.labelMedium)),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              PassengerStepper(
                title: "Người lớn",
                subtitle: "Từ 12 tuổi trở lên",
                value: widget.viewModel.adultCount,
                onIncrement: () {
                  widget.viewModel.incrementAdult();
                  _syncMemberControllers();
                },
                onDecrement: () {
                  widget.viewModel.decrementAdult();
                  _syncMemberControllers();
                },
              ),
              const Divider(height: 32),
              PassengerStepper(
                title: "Trẻ em",
                subtitle: "Dưới 12 tuổi",
                value: widget.viewModel.childCount,
                onIncrement: () {
                  widget.viewModel.incrementChild();
                  _syncMemberControllers();
                },
                onDecrement: () {
                  widget.viewModel.decrementChild();
                  _syncMemberControllers();
                },
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: const Color(0xFFFEF3C7), borderRadius: BorderRadius.circular(8)),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info, size: 18, color: Color(0xFF92400E)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Lưu ý: Trẻ em dưới 10 tuổi bắt buộc phải có người lớn đi kèm trong suốt hành trình tour.",
                        style: TextStyle(fontSize: 11, color: Color(0xFF92400E), fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Thông tin liên hệ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.labelMedium)),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              BookingInputField(
                controller: nameController,
                label: "Họ và tên",
                hint: "Nguyễn Văn A",
                validator: (value) {
                  if (value == null || value.trim().isEmpty) return "Vui lòng nhập họ tên";
                  final nameRegex = RegExp(r'^[a-zA-ZÀ-ỹ\s]+$');
                  if (!nameRegex.hasMatch(value.trim())) return "Tên không được chứa số hoặc ký tự đặc biệt";
                  return null;
                },
              ),
              const SizedBox(height: 16),
              BookingInputField(
                controller: phoneController,
                label: "Số điện thoại",
                hint: "0901234567",
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(10)],
                validator: (value) {
                  if (value == null || value.isEmpty) return "Vui lòng nhập số điện thoại";
                  if (!RegExp(r'^0\d{9}$').hasMatch(value)) return "Số điện thoại không hợp lệ";
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMemberListSection() {
    final adultCount = widget.viewModel.adultCount;
    final childCount = widget.viewModel.childCount;
    final totalMembers = widget.viewModel.totalMembers;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Danh sách thành viên", style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.labelMedium)),
            Text("$totalMembers Thành viên", style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: AppTextTheme.bodySmall)),
          ],
        ),
        const SizedBox(height: 12),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: totalMembers,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final isChild = index >= adultCount;
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColors.primary.withOpacity(0.1),
                        child: const Icon(Icons.person, size: 20, color: AppColors.primary),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Hành khách ${index + 1} ${isChild ? '(Trẻ em)' : '(Người lớn)'}",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.bodyMedium),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  BookingInputField(
                    controller: memberNameControllers[index],
                    label: "",
                    hint: "Tên đầy đủ theo CMND/CCCD",
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) return "Vui lòng nhập họ tên";
                      final nameRegex = RegExp(r'^[a-zA-ZÀ-ỹ\s]+$');
                      if (!nameRegex.hasMatch(value.trim())) return "Tên không được chứa số hoặc ký tự đặc biệt";
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  BookingInputField(
                    controller: memberIdControllers[index],
                    label: "",
                    hint: "Số CMND/CCCD",
                    validator: (value) {
                      if (value == null || value.isEmpty) return "Vui lòng nhập CMND/CCCD";
                      if (value.length < 6) return "Không hợp lệ";
                      return null;
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildNoteSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ghi chú đặc biệt", style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.labelMedium)),
        const SizedBox(height: 12),
        TextField(
          controller: noteController,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "VD: Dị ứng hải sản, yêu cầu phòng tầng cao, v.v.",
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomActionBar(num totalPrice, Tour tour, TourInstance tourInstance) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 20, offset: const Offset(0, -4))],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tổng cộng (${widget.viewModel.totalMembers} người)", style: TextStyle(color: AppColors.textSecondary, fontSize: AppTextTheme.bodySmall)),
                  Text(formatter.format(totalPrice), style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: AppTextTheme.labelMedium)),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: _handleSubmit,
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, minimumSize: const Size(0, 52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                child: Text("Tiếp tục thanh toán", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: AppTextTheme.buttonLarge)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmit() {
    if (widget.viewModel.adultCount == 0 && widget.viewModel.childCount > 0) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Trẻ em phải đi kèm người lớn")));
      return;
    }

    if (_formKey.currentState!.validate()) {
      final adultCount = widget.viewModel.adultCount;
      final childCount = widget.viewModel.childCount;
      final members = List.generate(adultCount + childCount, (i) {
        return TourBookingMember(
          tourBookingId: "temp",
          fullName: memberNameControllers[i].text,
          identityNumber: memberIdControllers[i].text,
          isChild: i >= adultCount,
          status: BookingMemberStatus.active,
        );
      });

      final booking = TourBooking(
        userId: "user_1",
        tourInstanceId: widget.tourInstanceId,
        passengerName: nameController.text,
        passengerPhone: phoneController.text,
        specialNotes: noteController.text,
        adultCount: adultCount,
        childCount: childCount,
        totalPrice: widget.viewModel.totalPrice,
        status: BookingStatus.pending,
        members: members,
      );

      debugPrint("BOOKING DATA");
      debugPrint(booking.toJson().toString());
      context.push('/tour/${widget.tourId}/book/review', extra: {
        'tour': widget.viewModel.tour,
        'tourInstance': widget.viewModel.tourInstance,
        'booking': booking,
      });
    }
  }
}
