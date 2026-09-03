import 'package:flutter/material.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_textstyles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                '${StringConst.greetingPrefix}${StringConst.userName}',
                style: AppTextStyles.greeting,
              ),
              const SizedBox(height: 8),
              Text(
                StringConst.pendingTasks,
                style: AppTextStyles.pending,
              ),
            ],
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
