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
}
