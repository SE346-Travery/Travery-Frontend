import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/user/tour/booking/input/views/widgets/tour_summary_card.dart';
import '../../../../../../../data/model/tour_model.dart';
import '../../../../../../../data/repositories/tour_repository.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../home/view/widgets/primary_app_bar.dart';
import '../widgets/section_title.dart';

class TourBookingInputPage extends StatefulWidget {
  final String tourId;

  const TourBookingInputPage({super.key, required this.tourId});
  @override
  State<TourBookingInputPage> createState() => _TourBookingInputPageState();
}

class _TourBookingInputPageState extends State<TourBookingInputPage> {
  int adultCount = 1;
  int childCount = 0;

  void _incrementAdult() => setState(() => adultCount++);
  void _decrementAdult() {
    if (adultCount > 1) setState(() => adultCount--);
  }

  void _incrementChild() => setState(() => childCount++);
  void _decrementChild() {
    if (childCount > 0) setState(() => childCount--);
  }

  @override
  Widget build(BuildContext context) {
    final Tour tour = TourRepository().getMockTours().firstWhere(
      (t) => t.id == widget.tourId,
      orElse: () => throw Exception("Tour not found"),
    );
    final double pricePerAdult = tour.price ?? 0;
    final double childDiscount = tour.childDiscountPercent ?? 0;
    final double pricePerChild = pricePerAdult * (1 - childDiscount);

    int totalMembers = adultCount + childCount;
    double rawTotal =
        (adultCount * pricePerAdult) + (childCount * pricePerChild);
    String formattedPrice = rawTotal
        .toStringAsFixed(0)
        .replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        );

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const PrimaryAppBar(title: "Điền thông tin"),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 150),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TourSummaryCard(tour: tour),
                  const SizedBox(height: 24),
                  const SectionTitle(title: "Số lượng hành khách"),
                  const SizedBox(height: 12),
                  _buildPassengerSelector(),
                  const SizedBox(height: 24),
                  const SectionTitle(title: "Thông tin liên hệ"),
                  const SizedBox(height: 12),
                  _buildContactForm(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionTitle(title: "Danh sách thành viên"),
                      Text(
                        "${totalMembers.toString().padLeft(2, '0')} Thành viên",
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: totalMembers,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      bool isAdult = index < adultCount;
                      return _buildMemberCard(index + 1, isAdult);
                    },
                  ),
                  const SizedBox(height: 24),
                  const SectionTitle(title: "Ghi chú đặc biệt"),
                  const SizedBox(height: 12),
                  _buildSpecialNotes(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildBottomBar(totalMembers, formattedPrice),
          ),
        ],
      ),
    );
  }

  Widget _buildPassengerSelector() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardDecoration(),
      child: Column(
        children: [
          _stepperRow(
            "Người lớn",
            "Từ 12 tuổi trở lên",
            adultCount,
            _decrementAdult,
            _incrementAdult,
          ),
          const Divider(height: 32, color: AppColors.inputBackground),
          _stepperRow(
            "Trẻ em",
            "Dưới 12 tuổi",
            childCount,
            _decrementChild,
            _incrementChild,
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFFEF3C7),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline, size: 16, color: Color(0xFF92400E)),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Lưu ý: Trẻ em dưới 10 tuổi bắt buộc phải có người lớn đi kèm trong suốt hành trình tour.",
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF92400E),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
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

  Widget _stepperRow(
    String title,
    String sub,
    int val,
    VoidCallback onDec,
    VoidCallback onInc,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              sub,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.inputBackground,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: AppColors.inputBorder),
          ),
          child: Row(
            children: [
              _stepBtn(
                Icons.remove,
                val == (title == "Người lớn" ? 1 : 0)
                    ? AppColors.textHint
                    : AppColors.primary,
                AppColors.surface,
                onDec,
              ),
              SizedBox(
                width: 30,
                child: Text(
                  val.toString().padLeft(2, '0'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              _stepBtn(Icons.add, AppColors.surface, AppColors.primary, onInc),
            ],
          ),
        ),
      ],
    );
  }

  Widget _stepBtn(
    IconData icon,
    Color iconColor,
    Color bgColor,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 4),
          ],
        ),
        child: Icon(icon, size: 16, color: iconColor),
      ),
    );
  }

  Widget _buildMemberCard(int index, bool isAdult) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  color: AppColors.primary,
                  size: 16,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "Hành khách $index (${isAdult ? 'Người lớn' : 'Trẻ em'})",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _inputField("Tên đầy đủ theo CMND/CCCD"),
          const SizedBox(height: 12),
          _inputField(
            isAdult ? "Số CMND / Hộ chiếu" : "Ngày sinh (DD/MM/YYYY)",
          ),
        ],
      ),
    );
  }

  Widget _buildContactForm() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardDecoration(),
      child: Column(
        children: [
          _labeledInput("HỌ VÀ TÊN", "Nguyễn Văn A"),
          const SizedBox(height: 16),
          _labeledInput("SỐ ĐIỆN THOẠI", "0901 234 567"),
        ],
      ),
    );
  }

  Widget _labeledInput(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: 6),
        _inputField(hint),
      ],
    );
  }

  Widget _inputField(String hint) {
    return TextField(
      style: const TextStyle(fontSize: 13),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.textHint, fontSize: 13),
        filled: true,
        fillColor: AppColors.inputBackground,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildSpecialNotes() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: _cardDecoration(),
      child: TextField(
        maxLines: 3,
        style: const TextStyle(fontSize: 13),
        decoration: InputDecoration(
          hintText: "VD: Dị ứng hải sản, yêu cầu phòng tầng cao, v.v.",
          hintStyle: const TextStyle(color: AppColors.textHint, fontSize: 13),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(12),
        ),
      ),
    );
  }

  Widget _buildBottomBar(int total, String price) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: const Border(top: BorderSide(color: AppColors.inputBorder)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 24,
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
                    "Tổng cộng ($total người)",
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "${price}đ",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonPrimary,
              minimumSize: const Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tiếp tục thanh toán",
                  style: TextStyle(
                    color: AppColors.buttonPrimaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.buttonPrimaryText,
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() => BoxDecoration(
    color: AppColors.surface,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: AppColors.inputBorder),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        blurRadius: 20,
        offset: const Offset(0, 4),
      ),
    ],
  );
}
