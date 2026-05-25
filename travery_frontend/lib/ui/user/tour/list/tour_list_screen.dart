import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/user/tour/list/view_models/tour_list_view_model.dart';
import 'package:travery_frontend/ui/user/widgets/tour_card.dart';

class TourListScreen extends StatefulWidget {
  const TourListScreen({
    super.key,
    required this.viewModel,
    this.keyword,
    this.destinationId,
  });

  final TourListViewModel viewModel;
  final String? keyword;
  final String? destinationId;

  @override
  State<TourListScreen> createState() => _TourListScreenState();
}

class _TourListScreenState extends State<TourListScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = widget.keyword ?? '';
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.viewModel.loadTours(
        keyword: widget.keyword,
        destinationId: widget.destinationId,
      );
    });
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      widget.viewModel.loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF131B2E)),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          'Danh sách Tour',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3FF),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Color(0xFF717786)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: 'Tìm kiếm tour...',
                        hintStyle: TextStyle(color: Color(0xFF717786)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
                      ),
                      onSubmitted: (value) {
                        widget.viewModel.loadTours(keyword: value);
                      },
                    ),
                  ),
                  if (_searchController.text.isNotEmpty)
                    IconButton(
                      icon: const Icon(Icons.clear, color: Color(0xFF717786)),
                      onPressed: () {
                        _searchController.clear();
                        widget.viewModel.loadTours();
                      },
                    ),
                ],
              ),
            ),
          ),

          // Tour List
          Expanded(
            child: Consumer<TourListViewModel>(
              builder: (context, vm, _) {
                if (vm.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (vm.error != null) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Không thể tải danh sách tour',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () => vm.loadTours(
                            keyword: widget.keyword,
                            destinationId: widget.destinationId,
                            refresh: true,
                          ),
                          child: const Text('Thử lại'),
                        ),
                      ],
                    ),
                  );
                }

                if (vm.tours.isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.travel_explore,
                          size: 48,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Không tìm thấy tour nào',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () => vm.loadTours(
                    keyword: widget.keyword,
                    destinationId: widget.destinationId,
                    refresh: true,
                  ),
                  child: ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: vm.tours.length + (vm.isLoadingMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index >= vm.tours.length) {
                        return const Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }

                      final tour = vm.tours[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TourCard(
                          id: tour.id,
                          name: tour.name,
                          price: tour.price,
                          thumbnailUrl: tour.thumbnailUrl,
                          destinationName: tour.destinationName,
                          durationDays: tour.durationDays,
                          averageRating: tour.averageRating,
                          onTap: () => context.push('/tour/${tour.id}'),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
