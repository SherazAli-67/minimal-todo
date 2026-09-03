import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/models/category.dart';
import 'package:minimal_todo/core/models/ongoing_task.dart';

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
}
