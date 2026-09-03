import 'package:flutter/material.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/core/app_data.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/screens/home/widgets/category_card.dart';
import 'package:minimal_todo/screens/home/widgets/home_header.dart';
import 'package:minimal_todo/screens/home/widgets/ongoing_task_card.dart';
import 'package:minimal_todo/screens/home/widgets/search_filter_bar.dart';

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
              child: const Column(
                crossAxisAlignment: .start,
                children: [
                  HomeHeader(),
                  SizedBox(height: 24),
                  SearchFilterBar(),
                  SizedBox(height: 35),
                  Text(
                    StringConst.categories,
                    style: AppTextStyles.sectionTitle,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 180,
              child: ListView.separated(
                padding: .symmetric(horizontal: 26),
                scrollDirection: .horizontal,
                itemCount: AppData.categories.length,
                separatorBuilder: (_, _) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    category: AppData.categories[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: .symmetric(horizontal: 26),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      StringConst.ongoingTasks,
                      style: AppTextStyles.sectionTitle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      StringConst.seeAll,
                      style: AppTextStyles.seeAll,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: .symmetric(horizontal: 26),
              child: Column(
                children: [
                  for (var i = 0; i < AppData.ongoingTasks.length; i++) ...[
                    if (i > 0) const SizedBox(height: 28),
                    OngoingTaskCard(
                      task: AppData.ongoingTasks[i],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
