import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travery_frontend/ui/user/tour/tour_view/tour_list/view/widgets/appbar.dart';

import '../../../../../../../data/fake_data/tour_data.dart';
import '../../../../../../../data/model/tour_combined_model.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../review/view/pages/tour_booking_review_page.dart';
import '../widgets/input_tourcard.dart';
import '../widgets/passenger.dart';
import '../widgets/textfield.dart';

class TourBookingInputPage extends StatefulWidget {
  final String userId;
  final String tourInstanceId;
  final TourCombined fullTourData;
  const TourBookingInputPage({
    super.key,
    required this.userId,
    required this.tourInstanceId,
    required this.fullTourData
  });

  @override
  State<TourBookingInputPage> createState() => _TourBookingInputPageState();
}

class _TourBookingInputPageState extends State<TourBookingInputPage> {
  final _contactName = TextEditingController();
  final _contactPhone = TextEditingController();
  final _specialNotes = TextEditingController();

  int adultCount = 2;
  int childCount = 0;

  List<Map<String, TextEditingController>> memberControllers = [];

  // HELPER CHO NHẬP BOOKING

  String _formatName(String name) {
    if (name.trim().isEmpty) return "";
    return name
        .trim()
        .split(RegExp(r'\s+'))
        .map((str) {
          if (str.isEmpty) return "";
          return str[0].toUpperCase() + str.substring(1).toLowerCase();
        })
        .join(' ');
  }

  bool _isValidPhone(String phone) {
    return RegExp(r'^(0[3|5|7|8|9])([0-9]{8})$').hasMatch(phone.trim());
  }

  bool _isValidID(String id) {
    return RegExp(r'^[a-zA-Z0-9]{12}$').hasMatch(id.trim());
  }

  void _showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }


  TourCombined getTourCombined(String instanceId) {
    try {
      final instance = tourInstances.firstWhere((i) => i.id == instanceId);
      final tour = tours.firstWhere((t) => t.id == instance.tourId);
      return TourCombined(tour: tour, instance: instance);
    } catch (e) {
      throw Exception("Không tìm thấy thông tin tour cho ID: $instanceId");
    }
  }

  @override
  void initState() {
    super.initState();
    _syncMembers();
  }

  void _syncMembers() {
    int total = adultCount + childCount;
    if (memberControllers.length < total) {
      for (int i = memberControllers.length; i < total; i++) {
        memberControllers.add({
          'name': TextEditingController(),
          'idCard': TextEditingController(),
        });
      }
    } else if (memberControllers.length > total) {
      memberControllers.removeRange(total, memberControllers.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: BaseAppBar(title: 'Nhập thông tin'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TourSummaryCard(
              title: widget.fullTourData.tour.name,
              imageUrl:
                  "https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg",
              date: DateFormat(
                'dd/MM/yyyy',
              ).format(widget.fullTourData.instance.startDate),
              duration: widget.fullTourData.durationText,
            ),
            const SizedBox(height: 24),
            _buildSection(
              "Số lượng hành khách",
              Column(
                children: [
                  PassengerStepper(
                    title: "Người lớn",
                    subtitle: "Từ 12 tuổi trở lên",
                    value: adultCount,
                    onChanged: (v) => setState(() {
                      // RÀNG BUỘC: Không cho phép giảm xuống 0
                      adultCount = v < 1 ? 1 : v;
                      _syncMembers();
                    }),
                  ),
                  const Divider(height: 32, color: AppColors.inputBorder),
                  PassengerStepper(
                    title: "Trẻ em",
                    subtitle: "Dưới 12 tuổi",
                    value: childCount,
                    onChanged: (v) => setState(() {
                      childCount = v;
                      _syncMembers();
                    }),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.warning.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.warning.withOpacity(0.3),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          size: 18,
                          color: AppColors.warning,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Lưu ý: Trẻ em dưới 10 tuổi bắt buộc có người lớn đi kèm.",
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.textPrimary,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _buildSection(
              "Thông tin liên hệ",
              Column(
                children: [
                  CustomTextField(
                    label: "HỌ VÀ TÊN",
                    hint: "Nguyễn Văn A",
                    controller: _contactName,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    label: "SỐ ĐIỆN THOẠI",
                    hint: "0901 234 567",
                    controller: _contactPhone,
                    keyboardType: TextInputType.phone,
                  ),
                ],
              ),
            ),
            _buildMemberList(),
            _buildSection(
              "Ghi chú đặc biệt",
              CustomTextField(
                hint: "Dị ứng, yêu cầu phòng...",
                controller: _specialNotes,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
      bottomSheet: _buildBottomBar(),
    );
  }

  Widget _buildSection(String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.inputBorder),
          ),
          child: child,
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildMemberList() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Danh sách thành viên",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              "${adultCount + childCount} Thành viên",
              style: const TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ...List.generate(
          memberControllers.length,
          (i) => Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.inputBorder),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.person_outline,
                      color: AppColors.primary,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Hành khách ${i + 1} (${i < adultCount ? 'Người lớn' : 'Trẻ em'})",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hint: "Tên đầy đủ theo CMND/CCCD",
                  controller: memberControllers[i]['name']!,
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  hint: "Số CMND / Hộ chiếu",
                  controller: memberControllers[i]['idCard']!,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomBar() {
    double total =
        (adultCount * widget.fullTourData.tour.price) +
        (childCount * widget.fullTourData.tour.price);
    final formatter = NumberFormat('#,###', 'vi_VN');
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: const Border(top: BorderSide(color: AppColors.inputBorder)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tổng cộng (${adultCount + childCount} người)",
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Text(
                    "${formatter.format(total)}đ",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: _onContinue,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonPrimary,
                elevation: 0,
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
                      color: AppColors.buttonPrimaryText,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.buttonPrimaryText,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onContinue() {
    _contactName.text = _formatName(_contactName.text);

    if (_contactName.text.isEmpty || _contactName.text.length < 2) {
      _showErrorMessage("Vui lòng nhập họ tên liên hệ hợp lệ");
      return;
    }

    if (!_isValidPhone(_contactPhone.text)) {
      _showErrorMessage("Số điện thoại không đúng định dạng (10 số)");
      return;
    }
    for (int i = 0; i < memberControllers.length; i++) {
      var nameCtrl = memberControllers[i]['name']!;
      var idCtrl = memberControllers[i]['idCard']!;
      nameCtrl.text = _formatName(nameCtrl.text);

      if (nameCtrl.text.isEmpty || nameCtrl.text.length < 2) {
        _showErrorMessage("Họ tên hành khách ${i + 1} không hợp lệ");
        return;
      }

      if (!_isValidID(idCtrl.text)) {
        _showErrorMessage(
          "Số CMND/Hộ chiếu HK ${i + 1} không hợp lệ (12 ký tự)",
        );
        return;
      }
    }

    final bookingInfo = {
      'user_id': widget.userId,
      'tour_instance_id': widget.tourInstanceId,
      'passenger_name': _contactName.text,
      'passenger_phone': _contactPhone.text,
      'adult_count': adultCount,
      'child_count': childCount,
      'member_list': memberControllers
          .map((m) => {'name': m['name']!.text, 'idCard': m['idCard']!.text})
          .toList(),
      'special_notes': _specialNotes.text,
      'total_price':
          (adultCount * widget.fullTourData.tour.price) +
          (childCount * widget.fullTourData.tour.price),
    };

    print("Dữ liệu chuẩn: $bookingInfo");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TourBookingReviewPage(
          bookingInfo: bookingInfo,
          tourData: widget.fullTourData,
        ),
      ),
    );
  }
}
