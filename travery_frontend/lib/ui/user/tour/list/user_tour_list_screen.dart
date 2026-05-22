import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/list/widgets/user_tour_card.dart';
import 'package:travery_frontend/ui/user/tour/list/view_models/user_tour_list_view_model.dart';
import 'package:travery_frontend/routing/routes.dart';

class UserTourListScreen extends StatefulWidget {
  const UserTourListScreen({super.key});

  @override
  State<UserTourListScreen> createState() => _UserTourListScreenState();
}

class _UserTourListScreenState extends State<UserTourListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final viewModel = context.read<UserTourListViewModel>();
      viewModel.loadTours.execute();
      viewModel.loadTours.addListener(_onToursLoaded);
    });
  }

  void _onToursLoaded() {
    final viewModel = context.read<UserTourListViewModel>();
    if (viewModel.loadTours.completed) {
      viewModel.onToursLoaded();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface.withOpacity(0.8),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.black.withOpacity(0.05),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color(0xFFEAEAEA), width: 0.5),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xFF1D4ED8),
          onPressed: () => Navigator.maybePop(context),
        ),
        titleSpacing: 0,
        title: const Text(
          'Danh sách Tour',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
            letterSpacing: -0.5,
          ),
        ),
      ),
      body: Consumer<UserTourListViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.loadTours.running) {
            return const Center(child: CircularProgressIndicator());
          }

          final tours = viewModel.filteredTours.value;

          return RefreshIndicator(
            onRefresh: () async {
              await viewModel.loadTours.execute();
              viewModel.onToursLoaded();
            },
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              itemCount: tours.length + 1,
              itemBuilder: (context, index) {
                if (index == tours.length) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 24),
                    child: Center(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.primaryLightWhiteBlue,
                          side: BorderSide(
                            color: AppColors.primary.withOpacity(0.1),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Xem thêm tour',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  );
                }

                final tour = tours[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: UserTourCard(
                    tour: tour,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.userTourDetail(tour.id ?? ''),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
