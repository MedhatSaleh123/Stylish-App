import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/constants/app_router.dart';

import '../../data/local/onboarding_data.dart';
import '../cubits/onboarding_cubit.dart';
import 'bottom_section.dart';
import 'onboarding_item.dart';
import 'top_section.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        if (state.completed) {
          Navigator.pushReplacementNamed(context, AppName.login);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TopSection(),

              Expanded(
                child: PageView.builder(
                  controller: context.read<OnboardingCubit>().pageController,

                  itemCount: OnBoardingData.pages.length,

                  onPageChanged: context.read<OnboardingCubit>().onPageChanged,

                  itemBuilder: (context, index) {
                    final page = OnBoardingData.pages[index];

                    return OnBoardingItem(page: page);
                  },
                ),
              ),

              BottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
