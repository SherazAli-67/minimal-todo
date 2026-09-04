import 'package:go_router/go_router.dart';
import '../presentation/screens/home/home_screen.dart';
import '../presentation/screens/today/today_tasks_screen.dart';

GoRouter router = GoRouter(
  initialLocation: NamedRoutes.home.routeName,
  routes: [
    GoRoute(
      path: NamedRoutes.home.routeName,
      builder: (_, _) => const HomeScreen(),
    ),
    GoRoute(
      path: NamedRoutes.today.routeName,
      builder: (_, _) => const TodayTasksScreen(),
    ),
  ],
);

enum NamedRoutes {
  home('/home'),
  today('/today');

  final String routeName;

  const NamedRoutes(this.routeName);
}
