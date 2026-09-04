import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_icons.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/core/models/timeline_task.dart';

class TimelineTaskCard extends StatelessWidget {
  const TimelineTaskCard({
    super.key,
    required this.task,
  });

  final TimelineTask task;

  @override
  Widget build(BuildContext context) {
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
            child: Image.asset(task.bgImage, height: 145,)
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
                                  child: ClipOval(
                                    // borderRadius: .circular(100),
                                    child: Image.network(task.members[i].imageUrl),
                                  ),
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
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        shape: .circle,
                      ),
                      child: SvgPicture.asset(AppIcons.icPhone, width: 14, height: 14, colorFilter: .mode(AppColors.inkMuted, .srcIn)),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  task.title,
                  style: AppTextStyles.timelineCardTitle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
