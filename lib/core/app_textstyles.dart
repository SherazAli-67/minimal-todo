import 'package:flutter/material.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';

class AppTextStyles {
  static const greeting = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 24,
    fontWeight: .w500,
    height: 1.2,
    color: AppColors.ink,
  );

  static const pending = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 12,
    fontWeight: .w400,
    height: 1.2,
    color: AppColors.muted400,
  );

  static const searchHint = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 16,
    fontWeight: .w400,
    height: 1.2,
    color: AppColors.muted600,
  );

  static const sectionTitle = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 20,
    fontWeight: .w500,
    height: 1.2,
    letterSpacing: 0.8,
    color: AppColors.ink,
  );

  static const seeAll = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 13,
    fontWeight: .w500,
    height: 1.2,
    color: AppColors.muted700,
  );

  static const categoryTitle = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 20,
    fontWeight: .w500,
    height: 1.2,
    letterSpacing: -0.4,
    color: AppColors.inkMuted,
  );

  static const categoryCount = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 15,
    fontWeight: .w400,
    height: 1.2,
    letterSpacing: -0.3,
    color: AppColors.muted700,
  );

  static const taskTitle = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 18,
    fontWeight: .w500,
    height: 1.2,
    letterSpacing: -0.36,
    color: AppColors.inkDark,
  );

  static const taskMeta = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 13,
    fontWeight: .w400,
    height: 1.2,
    color: AppColors.muted500,
  );

  static const durationChip = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 10,
    fontWeight: .w500,
    height: 1.2,
    color: AppColors.white,
  );

  static const progress = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 12,
    fontWeight: .w500,
    height: 1.2,
    color: AppColors.badge,
  );

  static const todayAppBar = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 18,
    fontWeight: .w500,
    height: 1.2,
    color: AppColors.inkMuted,
  );

  static const tasksToday = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 16,
    fontWeight: .w400,
    height: 1.2,
    color: AppColors.muted400,
  );

  static const weekDayNumber = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 14,
    fontWeight: .w400,
    height: 1.2,
    letterSpacing: -0.28,
    color: AppColors.muted500,
  );

  static const weekDayNumberSelected = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 14,
    fontWeight: .w700,
    height: 1.2,
    letterSpacing: -0.28,
    color: AppColors.white,
  );

  static const weekDayLabel = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 11,
    fontWeight: .w400,
    height: 1.2,
    color: AppColors.muted500,
  );

  static const weekDayLabelSelected = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 11,
    fontWeight: .w400,
    height: 1.2,
    color: AppColors.white,
  );

  static const timelineTime = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 12,
    fontWeight: .w400,
    height: 1.2,
    color: AppColors.muted500,
  );

  static const timelineCardTitle = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 16,
    fontWeight: .w500,
    height: 1.2,
    color: AppColors.inkDark,
  );

  static const welcomeBrand = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 36,
    fontWeight: .w700,
    height: 1.2,
    color: AppColors.ink,
  );

  static const welcomeHeadline = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 22,
    fontWeight: .w500,
    height: 1.3,
    color: AppColors.inkMuted,
  );

  static const welcomeSubtitle = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 15,
    fontWeight: .w400,
    height: 1.4,
    color: AppColors.muted700,
  );

  static const welcomeCta = TextStyle(
    fontFamily: StringConst.appFontFamily,
    fontSize: 16,
    fontWeight: .w600,
    height: 1.2,
    color: AppColors.white,
  );
}
