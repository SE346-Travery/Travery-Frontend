import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travery_frontend/ui/user/tour/tour_view/tour_list/view/widgets/appbar.dart';

import '../../../../../../../data/fake_data/tour_data.dart';
import '../../../../../../../data/model/tour_combined_model.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../widgets/input_tourcard.dart';
import '../widgets/passenger.dart';
import '../widgets/textfield.dart';

class TourBookinhInputPage extends StatefulWidget {
  final String userId;
  final String tourInstanceId;

  const TourBookinhInputPage({
    super.key,
    required this.userId,
    required this.tourInstanceId,
  });

  @override
  State<TourBookinhInputPage> createState() => _TourBookinhInputPageState();
}

class _TourBookinhInputPageState extends State<TourBookinhInputPage> {
  final _contactName = TextEditingController();
  final _contactPhone = TextEditingController();
  final _specialNotes = TextEditingController();
  late TourCombined fullTourData;
  int adultCount = 2;
  int childCount = 0;

  List<Map<String, TextEditingController>> memberControllers = [];
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
    fullTourData = getTourCombined(widget.tourInstanceId);
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
            const TourSummaryCard(
              title: "Tour Hạ Long 5 Sao: Khám phá Vịnh Kỳ Quan Thế Giới",
              imageUrl:
                  "https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg",
              date: "25/10/2024",
              duration: "2 ngày 1 đêm",
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
                      adultCount = v;
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
                    child: Row(
                      children: const [
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
        (adultCount * fullTourData.tour.price) +
        (childCount * fullTourData.tour.price);
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
          (adultCount * fullTourData.tour.price) +
          (childCount * fullTourData.tour.price),
    };

    print("Dữ liệu sẵn sàng: $bookingInfo");
  }
}
