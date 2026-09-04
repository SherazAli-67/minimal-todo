import 'package:flutter/material.dart';

class WelcomePreviewCard {
  const WelcomePreviewCard({
    required this.title,
    required this.taskCount,
    required this.backgroundColor,
  });

  final String title;
  final int taskCount;
  final Color backgroundColor;

  String get taskCountLabel {
    final padded = taskCount.toString().padLeft(2, '0');
    return '$padded Tasks';
  }
}
