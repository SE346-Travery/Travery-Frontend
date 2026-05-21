import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_coach/coordinator_coach.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/ui/coordinator/view/coordinator_view_coach_screen.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_coach_card.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_filter_button.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_searchbar.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorViewCoachListScreen extends StatefulWidget {
  const CoordinatorViewCoachListScreen({super.key});

  @override
  State<CoordinatorViewCoachListScreen> createState() =>
      _CoordinatorViewCoachListScreenState();
}

class _CoordinatorViewCoachListScreenState
    extends State<CoordinatorViewCoachListScreen>
    with AutomaticKeepAliveClientMixin {
  final TextEditingController _searchController = TextEditingController();

  List<CoordinatorCoach> _allCoaches = [];
  List<CoordinatorCoach> _filteredCoaches = [];
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadCoaches());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadCoaches() async {
    try {
      final repository = context.read<CoordinatorRepository>();
      final result = await repository.getAllCoaches();
      if (mounted) {
        setState(() {
          if (result is Ok<List<CoordinatorCoach>>) {
            _allCoaches = result.value;
            _filteredCoaches = result.value;
          }
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  void _onSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredCoaches = _allCoaches;
      } else {
        final q = query.toLowerCase();
        _filteredCoaches = _allCoaches.where((c) {
          return c.name.toLowerCase().contains(q) ||
              c.driver.name.toLowerCase().contains(q) ||
              c.vehicle.licensePlate.toLowerCase().contains(q) ||
              c.vehicle.vehicleType.toLowerCase().contains(q);
        }).toList();
      }
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          _buildHeader(context),
          const SizedBox(height: 16),
          _buildSearchAndFilter(),
          const SizedBox(height: 12),
          Expanded(child: _buildList()),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, statusBarHeight + 16, 16, 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDarkBlackBlue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 26),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const Text(
            'Danh sách đặt xe',
            style: TextStyle(
              fontSize: AppTextTheme.headlineSmall,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchAndFilter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CoordinatorSearchBar(
              title: 'Tìm kiếm',
              hint: 'Search',
              controller: _searchController,
              onSearchTap: () => _onSearch(_searchController.text),
            ),
          ),
          const SizedBox(width: 12),
          CoordinatorFilterButton(
            onFilterTap: () {
              // TODO: open filter dialog
            },
          ),
        ],
      ),
    );
  }

  Widget _buildList() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      );
    }

    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: AppColors.error, size: 40),
            const SizedBox(height: 12),
            Text(
              'Đã xảy ra lỗi: $_errorMessage',
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: AppTextTheme.bodyMedium,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: _loadCoaches,
              child: const Text('Thử lại'),
            ),
          ],
        ),
      );
    }

    if (_filteredCoaches.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.inbox_outlined, color: AppColors.textSecondary, size: 48),
            SizedBox(height: 12),
            Text(
              'Không tìm thấy chuyến xe nào',
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: AppTextTheme.bodyMedium,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      itemCount: _filteredCoaches.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final coach = _filteredCoaches[index];
        return CoordinatorCoachCard(
          coach: coach,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => CoordinatorViewCoachScreen(coach: coach),
              ),
            );
          },
        );
      },
    );
  }
}


