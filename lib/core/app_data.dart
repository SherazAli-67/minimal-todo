import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/models/category.dart';
import 'package:minimal_todo/core/models/ongoing_task.dart';
import 'package:minimal_todo/core/models/timeline_task.dart';
import 'package:minimal_todo/core/models/week_day.dart';

class AppData {
  static const categories = [
    Category(
      name: 'Gardening',
      taskCount: 2,
      backgroundColor: AppColors.gardening,
    ),
    Category(
      name: 'Mobile App',
      taskCount: 5,
      backgroundColor: AppColors.mobileApp,
    ),
    Category(
      name: 'Gardening',
      taskCount: 2,
      backgroundColor: AppColors.categoryLilac,
    ),
  ];

  static const ongoingTasks = [
    OngoingTask(
      title: 'Wallet App Design',
      durationLabel: '6d',
      timeRange: '2:30 PM - 7: 00PM',
      progress: 0.46,
      memberColors: [
        AppColors.memberCoral,
        AppColors.memberSage,
        AppColors.memberBlue,
      ],
      backgroundColor: AppColors.taskLilac,
    ),
    OngoingTask(
      title: 'Dashboard & Mobile App',
      durationLabel: '4d',
      timeRange: '2:30 PM - 7: 00PM',
      progress: 0.46,
      memberColors: [
        AppColors.memberBlue,
        AppColors.memberCoral,
        AppColors.memberBlue,
        AppColors.memberSage,
        AppColors.memberBlue,
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
