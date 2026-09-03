import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_icons.dart';
import 'package:minimal_todo/core/app_textstyles.dart';

class TodayDateRow extends StatelessWidget {
  const TodayDateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                StringConst.todayDate,
                style: AppTextStyles.greeting,
              ),
              SizedBox(height: 12),
              Text(
                StringConst.tasksToday,
                style: AppTextStyles.tasksToday,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 58,
            height: 58,
            alignment: .center,
            decoration: const BoxDecoration(
              color: AppColors.calendarButton,
              shape: .circle,
            ),
            child: SvgPicture.asset(AppIcons.icCalendar, width: 24, height: 24),
          ),
        ),
      ],
    );
  }
}
