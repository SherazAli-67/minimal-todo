import 'package:go_router/go_router.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/today_tasks_screen.dart';
import '../presentation/screens/welcome_screen.dart';

GoRouter router = GoRouter(
  initialLocation: NamedRoutes.today.routeName,
  routes: [
    GoRoute(path: NamedRoutes.welcome.routeName, builder: (_, _) => const WelcomeScreen()),
    GoRoute(path: NamedRoutes.home.routeName, builder: (_, _) => const HomeScreen()),
    GoRoute(path: NamedRoutes.today.routeName, builder: (_, _) => const TodayTasksScreen()),
  ],
);

enum NamedRoutes {
  welcome('/welcome'),
  home('/home'),
  today('/today');

  final String routeName;

  const NamedRoutes(this.routeName);
}
