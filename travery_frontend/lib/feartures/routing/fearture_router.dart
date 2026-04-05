import 'package:go_router/go_router.dart';

import '../home/views/pages/home_page.dart';
import '../tour/views/pages/tour_list_page.dart';



class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(path: '/home', builder: (context, state) => HomePage()),
      GoRoute(path: '/tourlistscreen', builder: (context, state) => TourListScreen()),
    ],
  );
}
