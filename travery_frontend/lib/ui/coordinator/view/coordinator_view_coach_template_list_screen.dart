import 'package:flutter/material.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_station/coordinator_station.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/ui/coordinator/view_models/coordinator_coach_template_list_view_model.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorViewCoachTemplateListScreen extends StatefulWidget {
  final CoordinatorCoachTemplateListViewModel viewModel;

  const CoordinatorViewCoachTemplateListScreen({
    super.key,
    required this.viewModel,
  });

  @override
  State<CoordinatorViewCoachTemplateListScreen> createState() =>
      _CoordinatorViewCoachTemplateListScreenState();
}

class _CoordinatorViewCoachTemplateListScreenState
    extends State<CoordinatorViewCoachTemplateListScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.viewModel.loadStations.execute();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    widget.viewModel.dispose();
    super.dispose();
  }

  void _onCreateNew() {
    // Navigate to create template
  }

  void _onSelect(dynamic station) {
    // Return selected station or navigate
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // AppBar
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.textPrimary,
                      size: 26,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Chọn lộ trình',
                          style: TextStyle(
                            fontSize: AppTextTheme.headlineSmall,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Chọn lộ trình để tiếp tục tạo chuyến xe',
                          style: TextStyle(
                            fontSize: AppTextTheme.bodySmall,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: AppColors.primaryDarkBlackBlue,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: _onCreateNew,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.add, color: Colors.white, size: 16),
                            SizedBox(width: 4),
                            Text(
                              'Tạo lộ trình',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: AppTextTheme.bodySmall,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.03),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: const InputDecoration(
                    hintText: 'Tìm kiếm lộ trình...',
                    hintStyle: TextStyle(
                      color: AppColors.textHint,
                      fontSize: AppTextTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.textSecondary,
                      size: 20,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
              ),
            ),

            // List of Templates
            Expanded(
              child: ListenableBuilder(
                listenable: widget.viewModel.loadStations,
                builder: (context, child) {
                  final viewModel = widget.viewModel;
                  if (viewModel.loadStations.running) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (viewModel.loadStations.error) {
                    final error =
                        (viewModel.loadStations.result as Error).error;
                    return Center(
                      child: Text(
                        error.toString(),
                        style: const TextStyle(color: Colors.red),
                      ),
                    );
                  }

                  final stations = viewModel.loadStations.completed
                      ? (viewModel.loadStations.result
                                as Ok<List<CoordinatorStation>>)
                            .value
                      : <CoordinatorStation>[];

                  if (stations.isEmpty) {
                    return const Center(child: Text('Không có dữ liệu'));
                  }

                  return ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: stations.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      final station = stations[index];
                      return _buildStationCard(station);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStationCard(CoordinatorStation station) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Left blue accent line
            Container(
              width: 4,
              decoration: const BoxDecoration(
                color: AppColors.primaryDarkBlackBlue,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(12),
                ),
              ),
            ),

            // Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Top row: Location and Details
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Timeline dot
                        Column(
                          children: [
                            const SizedBox(height: 4),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 12),

                        // Location names
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                station.name,
                                style: const TextStyle(
                                  fontSize: AppTextTheme.bodyLarge,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${station.detailAdress}, ${station.cityProvince}',
                                style: const TextStyle(
                                  fontSize: AppTextTheme.bodyMedium,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Bottom row: Button
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primaryLightWhiteBlue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Spacer(),

                          // Choose button
                          Material(
                            color: AppColors.primaryDarkBlackBlue,
                            borderRadius: BorderRadius.circular(6),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(6),
                              onTap: () => _onSelect(station),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Text(
                                  'CHỌN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: AppTextTheme.bodySmall,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
