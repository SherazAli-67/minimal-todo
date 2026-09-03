import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_icons.dart';
import 'package:minimal_todo/core/app_textstyles.dart';

class TodayHeader extends StatelessWidget {
  const TodayHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.pop(),
          child: SvgPicture.asset(AppIcons.icBack, width: 24, height: 24, colorFilter: .mode(AppColors.inkMuted, .srcIn)),
        ),
        const Expanded(
          child: Text(
            StringConst.todayTasks,
            textAlign: .center,
            style: AppTextStyles.todayAppBar,
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: AppColors.avatarFallback,
            shape: .circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Icon(
            Icons.person_outline,
            color: AppColors.inkMuted,
            size: 24,
          ),
        ),
      ],
    );
  }
}
