import 'package:flutter/material.dart';
import 'package:minimal_todo/core/models/team_members_model.dart';

class TimelineTask {
  const TimelineTask({
    required this.title,
    required this.members,
    required this.backgroundColor,
    required this.cardHeight,
    required this.bgImage
  });

  final String title;
  final List<TeamMembersModel> members;
  final Color backgroundColor;
  final double cardHeight;
  final String bgImage;
}
