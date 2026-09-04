import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/router/app_router.dart';

class WelcomeCta extends StatelessWidget {
  const WelcomeCta({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        GestureDetector(
          onTap: () => context.go(NamedRoutes.home.routeName),
          child: Container(
            width: double.infinity,
            height: 58,
            alignment: .center,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: .circular(100),
            ),
            child: Text(StringConst.getStarted, style: AppTextStyles.welcomeCta),
          ),
        ),
        GestureDetector(
          onTap: () => context.go(NamedRoutes.home.routeName),
          child: Text(StringConst.skip, style: AppTextStyles.seeAll),
        ),
      ],
    );
  }
}
