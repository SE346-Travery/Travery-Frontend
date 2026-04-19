import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/seed_models/tour_instance/tour_instance.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import '../../tour/view_models/tour_list_view_model.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'widgets/card_tour.dart';
import 'widgets/search_bar.dart';
import 'widgets/service_system.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final TourListViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<TourInstance> _tourInstances;

  @override
  void initState() {
    super.initState();
    _tourInstances = [];
    widget.viewModel.loadTours();
    widget.viewModel.addListener(_onViewModelChanged);
  }

  void _onViewModelChanged() {
    setState(() {
      final tours = widget.viewModel.tours;
      _tourInstances = tours.expand<TourInstance>((tour) => tour.instances ?? []).toList();
    });
  }

  @override
  void dispose() {
    widget.viewModel.removeListener(_onViewModelChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.waving_hand, color: AppColors.primary),
            SizedBox(width: 8),
            Text(
              "Xin chào, User",
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: AppColors.textSecondary,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: widget.viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const CustomSearchBar(
                    hintText: "Tìm kiếm tour, xe khách, khách sạn...",
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: ServiceItem(
                          icon: Icons.travel_explore,
                          label: "Tour",
                          onTap: () => context.push(Routes.tourList),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ServiceItem(
                          icon: Icons.directions_bus,
                          label: "Vé xe",
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ServiceItem(icon: Icons.apartment, label: "Khách sạn"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tour nổi bật",
                        style: TextStyle(
                          fontSize: AppTextTheme.labelLarge,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () => context.push(Routes.tourList),
                        child: Text(
                          "Xem tất cả",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: AppTextTheme.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 360,
                    child: _tourInstances.isEmpty
                        ? const Center(child: Text('Không có tour nào'))
                        : ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _tourInstances.length,
                            itemBuilder: (context, index) {
                              final instance = _tourInstances[index];
                              final tour = widget.viewModel.getTourById(instance.tourId);
                              if (tour == null) return const SizedBox.shrink();
                              return TourCard(
                                tour: tour,
                                tourInstance: instance,
                                onTap: () => context.push('/tour/${tour.id}'),
                              );
                            },
                          ),
                  ),
                  const SizedBox(height: 32),
                  _buildConsultationBanner(),
                ],
              ),
            ),
    );
  }

  Widget _buildConsultationBanner() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bạn cần thiết kế chuyến đi riêng?",
                style: TextStyle(
                  color: AppColors.primaryDark,
                  fontSize: AppTextTheme.labelMedium,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Chat với chuyên gia để được tư vấn lịch trình cá nhân hóa 24/7.",
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: AppTextTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  "Liên hệ ngay",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: AppTextTheme.buttonMedium,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: -10,
            bottom: -10,
            child: Icon(
              Icons.support_agent,
              size: 100,
              color: AppColors.primary.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }
}
