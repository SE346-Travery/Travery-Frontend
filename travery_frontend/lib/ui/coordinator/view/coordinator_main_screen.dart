import 'package:flutter/material.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/coordinator/view_models/coordinator_tour_list_view_model.dart';
import 'coordinator_view_tour_list_screen.dart';
import 'coordinator_view_coach_list_screen.dart';
import 'coordinator_selection_screen.dart';
import 'coordinator_view_task_list_screen.dart';
import 'widgets/coordinator_bottom_navigation_bar.dart';

class CoordinatorMainScreen extends StatefulWidget {
  const CoordinatorMainScreen({super.key});

  @override
  State<CoordinatorMainScreen> createState() => _CoordinatorMainScreenState();
}

class _CoordinatorMainScreenState extends State<CoordinatorMainScreen> {
  late PageController _pageController;
  late CoordinatorTourListViewModel _tourListViewModel;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _tourListViewModel = CoordinatorTourListViewModel(
        coordinatorRepository: context.read<CoordinatorRepository>(),
      );
      _initialized = true;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tourListViewModel.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onBottomNavTapped(int index) {
    if (index == 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Tính năng Chat đang được phát triển'),
          duration: Duration(seconds: 1),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          CoordinatorTourListScreen(
            viewModel: _tourListViewModel,
          ),
          const CoordinatorViewCoachListScreen(),
          CoordinatorSelectionScreen(),
          Center(child: Text('Chat')),
          CoordinatorViewTaskListScreen(),
        ],
      ),
      bottomNavigationBar: CoordinatorBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavTapped,
      ),
    );
  }
}
