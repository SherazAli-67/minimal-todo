import 'package:flutter/material.dart';

class OngoingTask {
  const OngoingTask({
    required this.title,
    required this.durationLabel,
    required this.timeRange,
    required this.progress,
    required this.memberColors,
    required this.backgroundColor,
  });

  final String title;
  final String durationLabel;
  final String timeRange;
  final double progress;
  final List<Color> memberColors;
  final Color backgroundColor;

  String get progressLabel => '${(progress * 100).round()}%';
}
