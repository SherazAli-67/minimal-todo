import 'package:flutter/material.dart';
import 'package:minimal_todo/core/models/team_members_model.dart';

class OngoingTask {
  const OngoingTask({
    required this.title,
    required this.durationLabel,
    required this.timeRange,
    required this.progress,
    required this.members,
    required this.backgroundColor,
  });

  final String title;
  final String durationLabel;
  final String timeRange;
  final double progress;
  final List<TeamMembersModel> members;
  final Color backgroundColor;


  String get progressLabel => '${(progress * 100).round()}%';
}
