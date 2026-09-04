import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minimal_todo/core/models/welcome_preview_card.dart';
import '../../constants/string_constant.dart';
import '../../core/app_colors.dart';
import '../../core/app_data.dart';
import '../../core/app_textstyles.dart';
import '../../router/app_router.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
              //welcomeHero
              _buildHeaderWidget(),
              //welcome preview cards
              _buildPreviewCardWidget(),
              //welcome cta
             _buildCtaBtnWidget(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderWidget(){
    return const Column(
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        //StringConst.appTitle welcomeBran
        //welcomeHeadline welcomHeadline
        //welcomeSubtitle welcomeSubtitle
      ],
    );
  }

  Widget _buildPreviewCardWidget(){
    return SizedBox(
      height: 200,
      child: Stack(
        clipBehavior: .none,
        children: [
          for (var i = 0; i < AppData.welcomePreviewCards.length; i++)
            Positioned(
              left: i * 48.0,
              top: i * 18.0,
              child: _buildPreviewCardItemWidget(card: AppData.welcomePreviewCards[i])
            ),
        ],
      ),
    );
  }
  Widget _buildPreviewCardItemWidget({required WelcomePreviewCard card}){
    return Container(
      width: 157,
      height: 140,
      // padding: .all(21),
      decoration: BoxDecoration(
        // color: card.backgroundColor,
        // borderRadius: .circular(20),
      ),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          //card.title categoryTitle
          //card.taskCountLabel
        ],
      ),
    );
  }

  Widget _buildCtaBtnWidget(BuildContext context){
    return Column(
      spacing: 16,
      children: [
        GestureDetector(
          // onTap: () => context.go(NamedRoutes.home.routeName),
          child: Container(
            width: double.infinity,
            height: 58,
            alignment: .center,
            decoration: BoxDecoration(
              //color black
              //borderRadius: 99
            ),
            child: const SizedBox()
            //getStarted welcomeCta
          ),
        ),
        GestureDetector(
          // onTap: () => context.go(NamedRoutes.home.routeName),
          child: const SizedBox()
          //skip seeAll
        ),
      ],
    );
  }
}
