import 'package:flutter/material.dart';
import 'package:minimal_todo/core/app_data.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'widgets/timeline_task_card.dart';
import 'widgets/today_date_row.dart';
import 'widgets/today_header.dart';
import 'widgets/week_date_strip.dart';

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
            const Padding(
              padding: .symmetric(horizontal: 25),
              child: TodayHeader(),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: .symmetric(horizontal: 25),
              child: TodayDateRow(),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: .symmetric(horizontal: 25),
              child: WeekDateStrip(
                selectedIndex: _selectedDayIndex,
                onSelected: (index)=> setState(()=> _selectedDayIndex = index),
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: .symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(
                    width: 72,
                    child: Column(
                      children: [
                        for (final time in AppData.timelineTimes)
                          SizedBox(
                            height: 52,
                            child: Text(
                              time,
                              textAlign: .center,
                              style: AppTextStyles.timelineTime,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        for (var i = 0; i < AppData.timelineTasks.length; i++) ...[
                          if (i > 0) const SizedBox(height: 13),
                          TimelineTaskCard(task: AppData.timelineTasks[i],),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
