import 'package:flutter/material.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_textstyles.dart';

class WelcomeHero extends StatelessWidget {
  const WelcomeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        Text(StringConst.appTitle, style: AppTextStyles.welcomeBrand),
        Text(StringConst.welcomeHeadline, style: AppTextStyles.welcomeHeadline),
        Text(StringConst.welcomeSubtitle, style: AppTextStyles.welcomeSubtitle),
      ],
    );
  }
}
