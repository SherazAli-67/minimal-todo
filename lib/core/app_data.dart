import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/models/category.dart';
import 'package:minimal_todo/core/models/ongoing_task.dart';
import 'package:minimal_todo/core/models/team_members_model.dart';
import 'package:minimal_todo/core/models/timeline_task.dart';
import 'package:minimal_todo/core/models/week_day.dart';

import 'app_icons.dart';

class AppData {
  static final categories = [
    Category(
      name: 'Gardening',
      taskCount: 2,
      backgroundColor: AppColors.gardening,
      image: AppIcons.wateringPlantImg1
    ),
     Category(
      name: 'Mobile App',
      taskCount: 5,
      backgroundColor: AppColors.mobileApp,
      image: AppIcons.wateringPlantImg2
     ),
     Category(
      name: 'Gardening',
      taskCount: 2,
      backgroundColor: AppColors.categoryLilac,
      image: AppIcons.wateringPlantImg1
     ),
  ];

  static List<OngoingTask> ongoingTasks = [
    OngoingTask(
      title: 'Wallet App Design',
      durationLabel: '6d',
      timeRange: '2:30 PM - 7: 00PM',
      progress: 0.46,
      members: [

        TeamMembersModel(bgColor: AppColors.memberCoral, imageUrl: AppIcons.profileUrl1),
        TeamMembersModel(bgColor: AppColors.memberBlue, imageUrl: AppIcons.profileUrl2),
      ],
      backgroundColor: AppColors.taskLilac,
    ),
    OngoingTask(
      title: 'Dashboard & Mobile App',
      durationLabel: '4d',
      timeRange: '2:30 PM - 7: 00PM',
      progress: 0.46,
      members: [
        TeamMembersModel(bgColor: AppColors.memberBlue, imageUrl: AppIcons.profileUrl1),
        TeamMembersModel(bgColor: AppColors.memberCoral, imageUrl: AppIcons.profileUrl2),
        TeamMembersModel(bgColor: AppColors.memberBlue, imageUrl: AppIcons.profileUrl3),
        TeamMembersModel(bgColor: AppColors.memberSage, imageUrl: AppIcons.profileUrl4),
        TeamMembersModel(bgColor: AppColors.memberBlue, imageUrl: AppIcons.profileUrl5),
      ],
      backgroundColor: AppColors.taskBeige,
    ),
  ];

  static const selectedWeekDayIndex = 3;

  static const weekDays = [
    WeekDay(day: 5, label: 'Mon'),
    WeekDay(day: 6, label: 'Tue'),
    WeekDay(day: 7, label: 'Wed'),
    WeekDay(day: 8, label: 'Thu'),
    WeekDay(day: 9, label: 'Fri'),
    WeekDay(day: 10, label: 'Sat'),
    WeekDay(day: 11, label: 'Sun'),
  ];

  static const timelineTimes = [
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 PM',
    '12:30 PM',
    '01:00 PM',
    '01:30 PM',
    '02:00 PM',
  ];

  static const timelineTasks = [
    TimelineTask(
      title: 'Website design with responsive',
      memberColors: [
        AppColors.memberCoral,
        AppColors.memberSage,
        AppColors.memberBlue,
        AppColors.memberCoral,
      ],
      backgroundColor: AppColors.taskBeige,
      cardHeight: 127,
    ),
    TimelineTask(
      title: 'Mobile Wireframing',
      memberColors: [
        AppColors.memberCoral,
        AppColors.memberSage,
        AppColors.memberBlue,
      ],
      backgroundColor: AppColors.mobileApp,
      cardHeight: 105,
    ),
    TimelineTask(
      title: 'Meeting with client',
      memberColors: [
        AppColors.memberCoral,
        AppColors.memberSage,
      ],
      backgroundColor: AppColors.timelinePurple,
      cardHeight: 127,
    ),
    TimelineTask(
      title: 'Finance Dashboard',
      memberColors: [
        AppColors.memberCoral,
        AppColors.memberSage,
        AppColors.memberBlue,
        AppColors.memberCoral,
        AppColors.memberSage,
      ],
      backgroundColor: AppColors.timelineCyan,
      cardHeight: 105,
    ),
  ];
}
