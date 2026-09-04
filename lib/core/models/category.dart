import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.name,
    required this.taskCount,
    required this.backgroundColor,
    required this.image
  });

  final String name;
  final int taskCount;
  final Color backgroundColor;
  final String image;

  String get taskCountLabel {
    final padded = taskCount.toString().padLeft(2, '0');
    return '$padded Tasks';
  }
}
