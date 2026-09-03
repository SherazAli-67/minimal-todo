import 'package:flutter/material.dart';

class TimelineTask {
  const TimelineTask({
    required this.title,
    required this.memberColors,
    required this.backgroundColor,
    required this.cardHeight,
  });

  final String title;
  final List<Color> memberColors;
  final Color backgroundColor;
  final double cardHeight;
}
