import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/models/category.dart';
import 'package:minimal_todo/core/models/ongoing_task.dart';
import 'package:minimal_todo/core/models/team_members_model.dart';
import 'package:minimal_todo/core/models/timeline_task.dart';
import 'package:minimal_todo/core/models/week_day.dart';
import 'package:minimal_todo/core/models/welcome_preview_card.dart';

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

  static List<TimelineTask> timelineTasks = [
    TimelineTask(
      title: 'Website design with responsive',
      members: [
        TeamMembersModel(bgColor: AppColors.memberCoral, imageUrl: AppIcons.profileUrl1),
        TeamMembersModel(bgColor: AppColors.memberSage, imageUrl: AppIcons.profileUrl2),
        TeamMembersModel(bgColor: AppColors.memberBlue, imageUrl: AppIcons.profileUrl3),
        TeamMembersModel(bgColor: AppColors.memberCoral, imageUrl: AppIcons.profileUrl4),
      ],
      backgroundColor: AppColors.taskBeige,
      cardHeight: 127,
      bgImage: AppIcons.websiteDesignBgImg
    ),
    TimelineTask(
      title: 'Mobile Wireframing',
      members: [
        TeamMembersModel(bgColor: AppColors.memberCoral, imageUrl: AppIcons.profileUrl1),
        TeamMembersModel(bgColor: AppColors.memberSage, imageUrl: AppIcons.profileUrl2),
        TeamMembersModel(bgColor: AppColors.memberBlue, imageUrl: AppIcons.profileUrl3),
      ],
      backgroundColor: AppColors.mobileApp,
      cardHeight: 105,
      bgImage: AppIcons.mobileWireFrameTaskBgImg
    ),
    TimelineTask(
      title: 'Meeting with client',
      members: [
        TeamMembersModel(bgColor: AppColors.memberCoral, imageUrl: AppIcons.profileUrl1),
        TeamMembersModel(bgColor: AppColors.memberSage, imageUrl: AppIcons.profileUrl2),
      ],
      backgroundColor: AppColors.timelinePurple,
      cardHeight: 127,
      bgImage: AppIcons.meetingWithClientTaskBgImg
    ),
    TimelineTask(
      title: 'Finance Dashboard',
      members: [
        TeamMembersModel(bgColor: AppColors.memberCoral, imageUrl: AppIcons.profileUrl1),
        TeamMembersModel(bgColor: AppColors.memberSage, imageUrl: AppIcons.profileUrl2),
        TeamMembersModel(bgColor: AppColors.memberBlue, imageUrl: AppIcons.profileUrl3),
        TeamMembersModel(bgColor: AppColors.memberCoral, imageUrl: AppIcons.profileUrl4),
        TeamMembersModel(bgColor: AppColors.memberSage, imageUrl: AppIcons.profileUrl5),
      ],
      backgroundColor: AppColors.timelineCyan,
      bgImage: AppIcons.financeDashboardTaskBgImg,
      cardHeight: 105,
    ),
  ];

  static const welcomePreviewCards = [
    WelcomePreviewCard(title: 'Gardening', taskCount: 2, backgroundColor: AppColors.gardening),
    WelcomePreviewCard(title: 'Mobile App', taskCount: 5, backgroundColor: AppColors.mobileApp),
    WelcomePreviewCard(title: 'Meeting', taskCount: 3, backgroundColor: AppColors.categoryLilac),
  ];
}
