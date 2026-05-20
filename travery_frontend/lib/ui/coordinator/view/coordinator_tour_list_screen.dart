import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/ui/coordinator/view_models/coordinator_tour_list_view_model.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_bottom_navigation_bar.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_searchbar.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_filter_button.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_tour_card.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/routing/routes.dart';

class CoordinatorTourListScreen extends StatefulWidget {
  const CoordinatorTourListScreen({super.key});

  @override
  State<CoordinatorTourListScreen> createState() =>
      _CoordinatorTourListScreenState();
}

class _CoordinatorTourListScreenState extends State<CoordinatorTourListScreen> {
  final TextEditingController _searchController = TextEditingController();
  int _selectedNavIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CoordinatorTourListViewModel>().loadTours();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Consumer<CoordinatorTourListViewModel>(
        builder: (context, viewModel, child) {
          return Stack(
            children: [
              // Main content scroll area
              Column(
                children: [
                  _buildHeader(context),
                  const SizedBox(height: 16),
                  _buildSearchAndFilterRow(context),
                  const SizedBox(height: 8),
                  Expanded(child: _buildTourList(viewModel)),
                ],
              ),
              // Bottom Navigation Bar
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CoordinatorBottomNavigationBar(
                  currentIndex: _selectedNavIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedNavIndex = index;
                    });
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24, statusBarHeight + 20, 24, 28),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDarkBlackBlue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chào mừng điều phối viên',
            style: TextStyle(
              fontSize: AppTextTheme.bodyMedium,
              color: Colors.white70,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Đỗ Minh Trí',
            style: TextStyle(
              fontSize: AppTextTheme.headlineSmall,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchAndFilterRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: CoordinatorSearchBar(
              title: 'Tìm kiếm',
              hint: 'Search',
              controller: _searchController,
              onSearchTap: () {
                context.read<CoordinatorTourListViewModel>().setSearchQuery(
                  _searchController.text,
                );
              },
            ),
          ),
          const SizedBox(width: 12),
          CoordinatorFilterButton(
            onFilterTap: () {
              // Open filter dialog or perform sorting if needed
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTourList(CoordinatorTourListViewModel viewModel) {
    if (viewModel.isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      );
    }

    if (viewModel.errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: AppColors.error, size: 40),
            const SizedBox(height: 12),
            Text(
              'Đã xảy ra lỗi: ${viewModel.errorMessage}',
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: AppTextTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: viewModel.loadTours,
              child: const Text('Thử lại'),
            ),
          ],
        ),
      );
    }

    final tours = viewModel.tours;

    if (tours.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.inbox_outlined,
              color: AppColors.textSecondary,
              size: 48,
            ),
            SizedBox(height: 12),
            Text(
              'Không tìm thấy tour nào',
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: AppTextTheme.bodyMedium,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 100, top: 8),
      itemCount: tours.length,
      itemBuilder: (context, index) {
        final tour = tours[index];

        // We dynamically assign statuses and fields to match the design aesthetics in the image
        // Card 1 (index 0): status "# CHỜ XÁC NHẬN", date "12/01/2027", quantity "15 / 30"
        // Card 2 (index 1): status "# ĐANG DIỄN RA", date "12/01/2027", quantity "15 / 30"
        // Card 3 (index 2+): status "# CHƯA ĐỦ SỐ LƯỢNG", date "12/01/2027", quantity "05 / 30"
        String status;
        int bookingNumber;
        if (index == 0) {
          status = "CHỜ XÁC NHẬN";
          bookingNumber = 15;
        } else if (index == 1) {
          status = "ĐANG DIỄN RA";
          bookingNumber = 15;
        } else {
          status = "CHƯA ĐỦ SỐ LƯỢNG";
          bookingNumber = 5;
        }

        return CoordinatorTourCard(
          label: tour.tourTemplate.name,
          status: status,
          bookingnumber: bookingNumber,
          date: '12/01/2027',
          imageUrl: tour.tourTemplate.imageUrl,
          onTap: () {
            context.push(Routes.coordinatorTourDetail, extra: tour);
          },
        );
      },
    );
  }
}
