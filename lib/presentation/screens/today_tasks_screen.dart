import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_data.dart';
import 'package:minimal_todo/core/app_icons.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/core/models/timeline_task.dart';
import 'package:minimal_todo/core/models/week_day.dart';

class TodayTasksScreen extends StatefulWidget {
  const TodayTasksScreen({super.key});

  @override
  State<TodayTasksScreen> createState() => _TodayTasksScreenState();
}

class _TodayTasksScreenState extends State<TodayTasksScreen> {
  late int _selectedDayIndex;

  @override
  void initState() {
    super.initState();
    _selectedDayIndex = AppData.selectedWeekDayIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: .only(top: 12, bottom: 24),
          children: [
            Padding(
              padding: .symmetric(horizontal: 25),
              child: _buildHeaderWidget(context),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: .symmetric(horizontal: 25),
              child: _buildDateRowWidget(),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: .symmetric(horizontal: 25),
              child: _buildWeekDateStripWidget(),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: .symmetric(horizontal: 24),
              child: _buildTimelineWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderWidget(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.pop(),
          child: SvgPicture.asset(AppIcons.icBack, width: 24, height: 24, colorFilter: .mode(AppColors.inkMuted, .srcIn)),
        ),
        const Expanded(
          child: Text(StringConst.todayTasks, textAlign: .center, style: AppTextStyles.todayAppBar),
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
          child: const Icon(Icons.person_outline, color: AppColors.inkMuted, size: 24),
        ),
      ],
    );
  }

  Widget _buildDateRowWidget() {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 12,
            children: [
              Text(StringConst.todayDate, style: AppTextStyles.greeting),
              Text(StringConst.tasksToday, style: AppTextStyles.tasksToday),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 58,
            height: 58,
            alignment: .center,
            decoration: const BoxDecoration(color: AppColors.calendarButton, shape: .circle),
            child: SvgPicture.asset(AppIcons.icCalendar, width: 24, height: 24),
          ),
        ),
      ],
    );
  }

  Widget _buildWeekDateStripWidget() {
    return Row(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .center,
      children: [
        for (var i = 0; i < AppData.weekDays.length; i++)
          _buildWeekDayItemWidget(
            weekDay: AppData.weekDays[i],
            isSelected: i == _selectedDayIndex,
            onTap: () => setState(() => _selectedDayIndex = i),
          ),
      ],
    );
  }

  Widget _buildWeekDayItemWidget({
    required WeekDay weekDay,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
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
            decoration: const BoxDecoration(color: AppColors.white, shape: .circle),
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

  Widget _buildTimelineWidget() {
    return Row(
      crossAxisAlignment: .start,
      children: [
        SizedBox(
          width: 72,
          child: Column(
            children: [
              for (final time in AppData.timelineTimes)
                SizedBox(
                  height: 52,
                  child: Text(time, textAlign: .center, style: AppTextStyles.timelineTime),
                ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            spacing: 13,
            children: [
              for (final task in AppData.timelineTasks)
                _buildTimelineTaskCardWidget(task: task),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTimelineTaskCardWidget({required TimelineTask task}) {
    return Container(
      width: double.infinity,
      height: task.cardHeight,
      clipBehavior: .hardEdge,
      decoration: BoxDecoration(
        color: task.backgroundColor,
        borderRadius: .circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -24,
            bottom: -36,
            child: Image.asset(task.bgImage, height: 145),
          ),
          Padding(
            padding: .only(left: 10, top: 14, right: 10, bottom: 14),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 30,
                        child: Stack(
                          children: [
                            for (var i = 0; i < task.members.length; i++)
                              Positioned(
                                left: i * 27,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: task.members[i].bgColor,
                                    shape: .circle,
                                    border: .all(color: task.backgroundColor, width: 2),
                                  ),
                                  child: ClipOval(child: Image.network(task.members[i].imageUrl)),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      alignment: .center,
                      decoration: const BoxDecoration(color: AppColors.white, shape: .circle),
                      child: SvgPicture.asset(AppIcons.icPhone, width: 14, height: 14, colorFilter: .mode(AppColors.inkMuted, .srcIn)),
                    ),
                  ],
                ),
                const Spacer(),
                Text(task.title, style: AppTextStyles.timelineCardTitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
