import 'package:flutter/material.dart';
import 'package:minimal_todo/core/app_data.dart';
import 'package:minimal_todo/core/app_textstyles.dart';
import 'package:minimal_todo/core/models/welcome_preview_card.dart';

class WelcomePreviewCards extends StatelessWidget {
  const WelcomePreviewCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        clipBehavior: .none,
        children: [
          for (var i = 0; i < AppData.welcomePreviewCards.length; i++)
            Positioned(
              left: i * 48.0,
              top: i * 18.0,
              child: _PreviewCard(card: AppData.welcomePreviewCards[i],),
            ),
        ],
      ),
    );
  }
}

class _PreviewCard extends StatelessWidget {
  const _PreviewCard({required this.card});

  final WelcomePreviewCard card;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 140,
      padding: .all(21),
      decoration: BoxDecoration(
        color: card.backgroundColor,
        borderRadius: .circular(20),
      ),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          Text(card.title, style: AppTextStyles.categoryTitle),
          Text(card.taskCountLabel, style: AppTextStyles.categoryCount),
        ],
      ),
    );
  }
}
