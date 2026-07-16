import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/onboarding_cubit.dart';

class PageCounter extends StatelessWidget {
  const PageCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Text(
          "${state.currentPage + 1}/3",

          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        );
      },
    );
  }
}
