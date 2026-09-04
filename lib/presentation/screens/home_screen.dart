import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_colors.dart';
import 'package:minimal_todo/core/app_data.dart';
import 'package:minimal_todo/core/app_icons.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/core/models/category.dart';
import 'package:minimal_todo/core/models/ongoing_task.dart';
import 'package:minimal_todo/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: .only(top: 16, bottom: 24),
          children: [
            Padding(
              padding: .symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: .start,
                spacing: 24,
                children: [
                  _buildHeaderWidget(),
                  _buildSearchFilterBarWidget(),
                  Text(StringConst.categories, style: AppTextStyles.sectionTitle),
                ],
              ),
            ),
            const SizedBox(height: 24),
            _buildCategoriesListWidget(),
            const SizedBox(height: 35),
            Padding(
              padding: .symmetric(horizontal: 26),
              child: _buildOngoingHeaderWidget(context),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: .symmetric(horizontal: 26),
              child: _buildOngoingListWidget(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderWidget() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 8,
            children: [
              Text('${StringConst.greetingPrefix}${StringConst.userName}', style: AppTextStyles.greeting),
              Text(StringConst.pendingTasks, style: AppTextStyles.pending),
            ],
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: AppColors.avatarFallback,
            shape: .circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Icon(Icons.person_outline, color: AppColors.inkMuted, size: 24),
        ),
      ],
    );
  }

  Widget _buildSearchFilterBarWidget() {
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
              spacing: 10,
              children: [
                SvgPicture.asset(AppIcons.icSearch, width: 24, height: 24, colorFilter: .mode(AppColors.muted600, .srcIn)),
                Text(StringConst.searchHint, style: AppTextStyles.searchHint),
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
            decoration: const BoxDecoration(color: AppColors.black, shape: .circle),
            child: SvgPicture.asset(AppIcons.icFilter, width: 24, height: 24, colorFilter: .mode(AppColors.white, .srcIn)),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoriesListWidget() {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        padding: .symmetric(horizontal: 26),
        scrollDirection: .horizontal,
        itemCount: AppData.categories.length,
        separatorBuilder: (_, _) => const SizedBox(width: 16),
        itemBuilder: (context, index) => _buildCategoryCardWidget(category: AppData.categories[index]),
      ),
    );
  }

  Widget _buildCategoryCardWidget({required Category category}) {
    return Container(
      width: 157,
      height: 180,
      decoration: BoxDecoration(
        color: category.backgroundColor,
        borderRadius: .circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: .all(21),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 8,
              children: [
                Text(category.name, style: AppTextStyles.categoryTitle),
                Text(category.taskCountLabel, style: AppTextStyles.categoryCount),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(category.image, height: 100),
          ),
        ],
      ),
    );
  }

  Widget _buildOngoingHeaderWidget(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Text(StringConst.ongoingTasks, style: AppTextStyles.sectionTitle)),
        GestureDetector(
          onTap: () => context.push(NamedRoutes.today.routeName),
          child: Text(StringConst.seeAll, style: AppTextStyles.seeAll),
        ),
      ],
    );
  }

  Widget _buildOngoingListWidget(BuildContext context) {
    return Column(
      spacing: 28,
      children: [
        for (final task in AppData.ongoingTasks)
          GestureDetector(
            onTap: () => context.push(NamedRoutes.today.routeName),
            child: _buildOngoingTaskCardWidget(task: task),
          ),
      ],
    );
  }

  Widget _buildOngoingTaskCardWidget({required OngoingTask task}) {
    return Container(
      width: double.infinity,
      padding: .symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: task.backgroundColor,
        borderRadius: .circular(24),
      ),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(task.title, style: AppTextStyles.taskTitle),
                const SizedBox(height: 14),
                Text(StringConst.teamMembers, style: AppTextStyles.taskMeta),
                const SizedBox(height: 11),
                Wrap(
                  spacing: 8,
                  children: [
                    for (final member in task.members)
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(color: member.bgColor, shape: .circle),
                        child: ClipRRect(
                          borderRadius: .circular(100),
                          child: Image.network(member.imageUrl),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 19),
                Row(
                  spacing: 4,
                  children: [
                    SvgPicture.asset(AppIcons.icClock, width: 20, height: 20, colorFilter: .mode(AppColors.clock, .srcIn)),
                    Text(task.timeRange, style: AppTextStyles.taskMeta),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: .end,
            children: [
              Container(
                padding: .symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.badge,
                  borderRadius: .circular(96),
                ),
                child: Text(task.durationLabel, style: AppTextStyles.durationChip),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: 56,
                height: 56,
                child: Stack(
                  alignment: .center,
                  children: [
                    SizedBox.expand(
                      child: CircularProgressIndicator(
                        value: task.progress,
                        strokeWidth: 5,
                        backgroundColor: AppColors.progressTrack,
                        color: AppColors.badge,
                        strokeCap: .round,
                      ),
                    ),
                    Text(task.progressLabel, style: AppTextStyles.progress),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
