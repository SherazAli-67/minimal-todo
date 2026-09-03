import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_icons.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/core/models/ongoing_task.dart';

class OngoingTaskCard extends StatelessWidget {
  const OngoingTaskCard({
    super.key,
    required this.task,
  });

  final OngoingTask task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: .symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: task.backgroundColor,
        borderRadius: .circular(24),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: .start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      task.title,
                      style: AppTextStyles.taskTitle,
                    ),
                    const SizedBox(height: 14),
                    Text(
                      StringConst.teamMembers,
                      style: AppTextStyles.taskMeta,
                    ),
                    const SizedBox(height: 11),
                    Wrap(
                      spacing: 8,
                      children: [
                        for (final color in task.memberColors)
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: color,
                              shape: .circle,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 19),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.icClock, width: 20, height: 20, colorFilter: .mode(AppColors.clock, .srcIn)),
                        const SizedBox(width: 4),
                        Text(
                          task.timeRange,
                          style: AppTextStyles.taskMeta,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: .end,
                children: [
                  Container(
                    padding: .symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.badge,
                      borderRadius: .circular(96),
                    ),
                    child: Text(
                      task.durationLabel,
                      style: AppTextStyles.durationChip,
                    ),
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    width: 56,
                    height: 56,
                    child: Stack(
                      alignment: .center,
                      children: [
                        SizedBox.expand(
                          child: CircularProgressIndicator(
                            value: task.progress,
                            strokeWidth: 5,
                            backgroundColor: AppColors.progressTrack,
                            color: AppColors.badge,
                            strokeCap: .round,
                          ),
                        ),
                        Text(
                          task.progressLabel,
                          style: AppTextStyles.progress,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
