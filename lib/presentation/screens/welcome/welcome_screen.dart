import 'package:flutter/material.dart';
import 'widgets/welcome_cta.dart';
import 'widgets/welcome_hero.dart';
import 'widgets/welcome_preview_cards.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 26),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 48),
              WelcomeHero(),
              Spacer(),
              WelcomePreviewCards(),
              Spacer(),
              WelcomeCta(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
