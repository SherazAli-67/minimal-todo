import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
    initialLocation: NamedRoutes.home.routeName,
    routes: [
      GoRoute(path: NamedRoutes.home.routeName, builder: (_, _) =>  Center(child: Text("Home screen"),))
    ]);

enum NamedRoutes{
  home('/home');
  final String routeName;

  const NamedRoutes(this.routeName);
}