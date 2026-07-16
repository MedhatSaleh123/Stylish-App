import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_router.dart';
import '../cubits/onboarding_cubit.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return TextButton(
          onPressed: () {
            context.read<OnboardingCubit>().nextPage();
            if (state.isLastPage) {
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil(AppName.login, (route) => false);
            }
          },

          child: Text(
            state.isLastPage ? "Get Started" : "Next",
            style: TextStyle(
              color: Color(0xffF83758),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        );
      },
    );
  }
}
