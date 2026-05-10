import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/utils/core_result.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/hotel_card.dart';
import 'package:travery_frontend/domain/models/admin/hotel/hotel.dart';
import 'package:travery_frontend/ui/admin/view_model/hotel_management_view_model.dart';

class HotelManagementScreen extends StatefulWidget {
  const HotelManagementScreen({super.key});

  @override
  State<HotelManagementScreen> createState() => _HotelManagementScreenState();
}

class _HotelManagementScreenState extends State<HotelManagementScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HotelManagementViewModel>().loadHotels.execute();
    });
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.read<HotelManagementViewModel>();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            ),
            // ── Content ──────────────────────────────────────────────────────
            Expanded(
              child: ListenableBuilder(
                listenable: vm.loadHotels,
                builder: (context, _) {
                  final cmd = vm.loadHotels;

                  if (cmd.running) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (cmd.error) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            size: 48,
                            color: AppColors.error,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Không thể tải danh sách khách sạn',
                            style: TextStyle(
                              fontSize: AppTextTheme.bodyLarge,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () => cmd.execute(),
                            child: const Text('Thử lại'),
                          ),
                        ],
                      ),
                    );
                  }

                  final hotels = cmd.result is Ok<List<Hotel>>
                      ? (cmd.result as Ok<List<Hotel>>).value
                      : <Hotel>[];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ── Page header ────────────────────────────────────────
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
                              'Hiện có ${hotels.length} cơ sở đang vận hành',
                              style: TextStyle(
                                fontSize: AppTextTheme.bodySmall,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ── Hotel list ─────────────────────────────────────────
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.only(bottom: 100),
                          itemCount: hotels.length,
                          separatorBuilder: (_, _) => const Divider(
                            height: 1,
                            thickness: 1,
                            color: AppColors.inputBorder,
                          ),
                          itemBuilder: (context, index) {
                            final h = hotels[index];
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

  // ── Handlers ─────────────────────────────────────────────────────────────────
  void _onHotelTap(Hotel h) {
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
