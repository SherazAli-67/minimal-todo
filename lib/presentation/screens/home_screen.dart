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
                  //categories sectionTitle
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
              //${StringConst.greetingPrefix}${StringConst.devName} greeting
              //pendingTasks pending
            ],
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            // color: AppColors.avatarFallback,
            // shape: .circle,
            boxShadow: [
            /*  BoxShadow(
                color: AppColors.black.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),*/
            ],
          ),
          //Icons.person_outline inkMuted 24
          child: const SizedBox(),

        ),
      ],
    );
  }

  Widget _buildSearchFilterBarWidget() {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: Container(
            padding: .symmetric(horizontal: 20, vertical: 17),
            decoration: BoxDecoration(
              //color searchFill
              // radius 99
            ),
            child: Row(
              spacing: 10,
              children: [
                //icSearch, muted600 color
                //searchHint searchHint
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: .center,
            padding: .all(17),
            //color black shape: circle
            // decoration: const BoxDecoration(color: AppColors.black, shape: .circle),
            //icFilter white
            child: const SizedBox(),
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
        // color: category.backgroundColor,
        // borderRadius: .circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: .all(21),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 8,
              children: [
                //category.name categoryTitle
                //category.taskCountLabel categoryCount
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            //category.image, height: 100
            child: const SizedBox()
          ),
        ],
      ),
    );
  }

  Widget _buildOngoingHeaderWidget(BuildContext context) {
    return Row(
      children: [
        //ongoingTasks, style: sectionTitle
        const Expanded(child:  SizedBox()),
        GestureDetector(
          // onTap: () => context.push(NamedRoutes.today.routeName),
          //seeAll, style: seeAl
          child:  const SizedBox()
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
      // padding: .symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        // color: task.backgroundColor,
        // borderRadius: .circular(24),
      ),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                //task.title, style: taskTitle
                const SizedBox(height: 14),
                //teamMembers, style: taskMeta
                const SizedBox(height: 11),
                Wrap(
                  spacing: 8,
                  children: [
                    for (final member in task.members)
                      Container(
                        width: 25,
                        height: 25,
                        // decoration: BoxDecoration(color: member.bgColor, shape: .circle),
                        child: ClipRRect(
                          borderRadius: .circular(100),
                          //image.imageUrl
                          child: const SizedBox()
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 19),
                Row(
                  spacing: 4,
                  children: [
                    //icClock, height:20, colo: clock
                    //task.timeRange, style: taskMeta
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: .end,
            spacing: 48,
            children: [
              Container(
                padding: .symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  // color: AppColors.badge,
                  // borderRadius: .circular(96),
                ),
                //task.durationLabel, style: durationChip
                child: const SizedBox(),
              ),
              SizedBox(
                width: 56,
                height: 56,
                child: Stack(
                  alignment: .center,
                  children: [
                    /*SizedBox.expand(
                      child: CircularProgressIndicator(
                        value: task.progress,
                        strokeWidth: 5,
                        backgroundColor: AppColors.progressTrack,
                        color: AppColors.badge,
                        strokeCap: .round,
                      ),
                    ),*/
                    //task.progressLabel, style: progress
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
