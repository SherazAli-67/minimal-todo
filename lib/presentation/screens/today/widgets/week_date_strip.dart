import 'package:flutter/material.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_data.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/core/models/week_day.dart';

class WeekDateStrip extends StatelessWidget {
  const WeekDateStrip({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .center,
      children: [
        for (var i = 0; i < AppData.weekDays.length; i++)
          _WeekDayItem(
            weekDay: AppData.weekDays[i],
            isSelected: i == selectedIndex,
            onTap: () => onSelected(i),
          ),
      ],
    );
  }
}

class _WeekDayItem extends StatelessWidget {
  const _WeekDayItem({
    required this.weekDay,
    required this.isSelected,
    required this.onTap,
  });

  final WeekDay weekDay;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisSize: .min,
      mainAxisAlignment: .center,
      children: [
        Text(
          weekDay.dayLabel,
          maxLines: 1,
          softWrap: false,
          style: isSelected ? AppTextStyles.weekDayNumberSelected : AppTextStyles.weekDayNumber,
        ),
        SizedBox(height: isSelected ? 8 : 10),
        Text(
          weekDay.label,
          maxLines: 1,
          softWrap: false,
          style: isSelected ? AppTextStyles.weekDayLabelSelected : AppTextStyles.weekDayLabel,
        ),
        if (isSelected) ...[
          const SizedBox(height: 12),
          Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: .circle,
            ),
          ),
        ],
      ],
    );

    return GestureDetector(
      onTap: onTap,
      child: isSelected
          ? Container(
              width: 46,
              height: 90,
              alignment: .center,
              decoration: BoxDecoration(
                color: AppColors.selectedDay,
                borderRadius: .circular(128),
              ),
              child: content,
            )
          : content,
    );
  }
}
