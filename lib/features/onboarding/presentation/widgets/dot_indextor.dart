import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/local/onboarding_data.dart';
import '../cubits/onboarding_cubit.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          children: List.generate(OnBoardingData.pages.length, (index) {
            final isSelected = state.currentPage == index;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),

              margin: const EdgeInsets.only(right: 8),

              width: isSelected ? 40 : 10,

              height: 8,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                color: isSelected ? Colors.black : Colors.grey,
              ),
            );
          }),
        );
      },
    );
  }
}
