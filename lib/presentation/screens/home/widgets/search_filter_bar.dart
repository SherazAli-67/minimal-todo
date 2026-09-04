import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_icons.dart';
import 'package:minimal_todo/core/app_textstyles.dart';

class SearchFilterBar extends StatelessWidget {
  const SearchFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 58,
            padding: .symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.searchFill,
              borderRadius: .circular(100),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.icSearch, width: 24, height: 24, colorFilter: .mode(AppColors.muted600, .srcIn)),
                const SizedBox(width: 10),
                Text(
                  StringConst.searchHint,
                  style: AppTextStyles.searchHint,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 58,
            height: 58,
            alignment: .center,
            decoration: const BoxDecoration(
              color: AppColors.black,
              shape: .circle,
            ),
            child: SvgPicture.asset(AppIcons.icFilter, width: 24, height: 24, colorFilter: .mode(AppColors.white, .srcIn)),
          ),
        ),
      ],
    );
  }
}
