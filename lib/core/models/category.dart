import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.name,
    required this.taskCount,
    required this.backgroundColor,
  });

  final String name;
  final int taskCount;
  final Color backgroundColor;

  String get taskCountLabel {
    final padded = taskCount.toString().padLeft(2, '0');
    return '$padded Tasks';
  }
}
