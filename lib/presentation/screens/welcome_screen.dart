import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minimal_todo/core/models/welcome_preview_card.dart';
import '../../constants/string_constant.dart';
import '../../core/app_data.dart';
import '../../core/app_textstyles.dart';
import '../../router/app_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1600))..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const .symmetric(horizontal: 26, vertical: 48),
          child: Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .spaceBetween,
            children: [
              _buildEntrance(begin: 0.0, end: 0.2, child: _buildHeaderWidget()),
              _buildPreviewCardWidget(),
              _buildEntrance(begin: 0.85, end: 1.0, child: _buildCtaBtnWidget(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEntrance({
    required double begin,
    required double end,
    required Widget child,
    Offset slideBegin = const Offset(0, 0.12),
  }) {
    final animation = CurvedAnimation(parent: _controller, curve: Interval(begin, end, curve: Curves.easeOutCubic));
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(begin: slideBegin, end: Offset.zero).animate(animation),
        child: child,
      ),
    );
  }

  Widget _buildHeaderWidget() {
    return const Column(
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        Text(StringConst.appTitle, style: AppTextStyles.welcomeBrand,),
        Text(StringConst.welcomeHeadline, style: AppTextStyles.welcomeHeadline,),
        Text(StringConst.welcomeSubtitle, style: AppTextStyles.welcomeSubtitle,)
      ],
    );
  }

  Widget _buildPreviewCardWidget() {
    const cardStart = 0.2;
    const cardDuration = 0.12;
    const cardGap = 0.02;
    final count = AppData.welcomePreviewCards.length;
    return SizedBox(
      height: 200,
      child: Stack(
        clipBehavior: .none,
        children: [
          for (var i = 0; i < count; i++)
            Positioned(
              left: i * 48.0,
              top: i * 18.0,
              child: _buildEntrance(
                begin: cardStart + (i * (cardDuration + cardGap)),
                end: cardStart + (i * (cardDuration + cardGap)) + cardDuration,
                slideBegin: const Offset(-0.18, 0.1),
                child: _buildPreviewCardItemWidget(card: AppData.welcomePreviewCards[i]),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPreviewCardItemWidget({required WelcomePreviewCard card}) {
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
          Text(card.title, style: AppTextStyles.categoryTitle,),
          Text(card.taskCountLabel,)
        ],
      ),
    );
  }

  Widget _buildCtaBtnWidget(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        GestureDetector(
          onTap: () => context.go(NamedRoutes.home.routeName),
          child: Container(
            width: double.infinity,
            height: 58,
            alignment: .center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: .circular(99),
            ),
            child: Text(StringConst.getStarted, style: AppTextStyles.welcomeCta,),
          ),
        ),
        GestureDetector(
          onTap: () => context.go(NamedRoutes.home.routeName),
          child: Text(StringConst.skip, style: AppTextStyles.seeAll,),
        ),
      ],
    );
  }
}
