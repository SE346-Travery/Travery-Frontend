import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/seed_models/tour_instance/tour_instance.dart';
import '../../../core/themes/app_colors.dart';
import '../../home/view/widgets/card_tour.dart';
import '../../tour/widgets/app_bar.dart';
import '../view_models/tour_list_view_model.dart';

class TourListScreen extends StatefulWidget {
  const TourListScreen({super.key, required this.viewModel});

  final TourListViewModel viewModel;

  @override
  State<TourListScreen> createState() => _TourListScreenState();
}

class _TourListScreenState extends State<TourListScreen> {
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
      appBar: const AppBarDefault(title: "Danh sách Tour"),
      body: widget.viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Tìm điểm đến, tour...",
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: AppColors.inputBackground,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: _FilterBar()),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final instance = _tourInstances[index];
                    final tour = widget.viewModel.getTourById(instance.tourId);
                    if (tour == null) return const SizedBox.shrink();

                    return Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: TourCard(
                        tour: tour,
                        tourInstance: instance,
                        onTap: () => context.push('/tour/${tour.id}'),
                      ),
                    );
                  }, childCount: _tourInstances.length),
                ),
              ],
            ),
    );
  }
}

class _FilterBar extends StatelessWidget {
  const _FilterBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(color: const Color(0xFFE5F2FF), borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                Icon(Icons.tune, size: 18, color: Colors.blue),
                SizedBox(width: 6),
                Text("Bộ lọc", style: TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          const Row(
            children: [
              Text("Giá: Thấp đến cao", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
              Icon(Icons.expand_more, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
