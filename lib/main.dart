import 'package:flutter/material.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: StringConst.appTitle,
        theme: ThemeData(
          brightness: .light,
          scaffoldBackgroundColor: Colors.white
        ),
      builder: (ctx, child) => child!,
      routerConfig: router,
    );
  }
}
