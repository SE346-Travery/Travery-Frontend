import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/home/widgets/user_search_bar.dart';
import 'package:travery_frontend/ui/user/home/widgets/user_service_grid.dart';
import 'package:travery_frontend/ui/user/home/widgets/user_tour_card.dart';
import 'package:travery_frontend/ui/user/home/widgets/user_consultation_banner.dart';
import 'package:travery_frontend/ui/user/home/widgets/user_bottom_nav_bar.dart';
import 'package:travery_frontend/ui/user/home/view_models/user_home_view_model.dart';
import 'package:travery_frontend/routing/routes.dart';

import '../../../utils/core_result.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserHomeViewModel>().loadFeaturedTours.execute();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: const Color(0xFF001A41).withOpacity(0.05),
        titleSpacing: 24,
        title: Row(
          children: const [
            Icon(Icons.waving_hand, color: AppColors.primary, size: 24),
            SizedBox(width: 8),
            Text(
              'Xin chào, User',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              color: AppColors.textSecondary,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              top: 16,
              left: 20,
              right: 20,
              bottom: 100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UserSearchBar(),
                const SizedBox(height: 32),
                UserServiceGrid(
                  onTourTap: () {
                    Navigator.pushNamed(context, Routes.userTourList);
                  },
                ),
                const SizedBox(height: 32),
                _buildFeaturedSection(),
                const SizedBox(height: 32),
                UserConsultationBanner(onContactTap: () {}),
              ],
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: UserBottomNavBar(currentIndex: 0),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedSection() {
    return Consumer<UserHomeViewModel>(
      builder: (context, viewModel, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tour nổi bật',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.userTourList);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Xem tất cả',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.link,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (viewModel.loadFeaturedTours.running)
              const Center(child: CircularProgressIndicator())
            else if (viewModel.loadFeaturedTours.completed)
              _buildTourGrid(viewModel)
            else
              const SizedBox(),
          ],
        );
      },
    );
  }

  Widget _buildTourGrid(UserHomeViewModel viewModel) {
    final result = viewModel.loadFeaturedTours.result;
    if (result == null) return const SizedBox();

    if (result is Ok) {
      final tours = (result as Ok).value;
      if (tours.isEmpty) {
        return const Center(
          child: Text(
            'Không có tour nào',
            style: TextStyle(color: AppColors.textSecondary),
          ),
        );
      }

      final displayTours = tours.take(2).toList();
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: UserHomeTourCard(
              tour: displayTours[0],
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.userTourDetail(displayTours[0].id ?? ''),
                );
              },
            ),
          ),
          const SizedBox(width: 16),
          if (displayTours.length > 1)
            Expanded(
              child: UserHomeTourCard(
                tour: displayTours[1],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.userTourDetail(displayTours[1].id ?? ''),
                  );
                },
              ),
            ),
        ],
      );
    }

    return const Center(
      child: Text('Đã xảy ra lỗi', style: TextStyle(color: AppColors.error)),
    );
  }
}
