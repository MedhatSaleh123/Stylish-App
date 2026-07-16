import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/save_onboarding_usecase.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({required this.saveOnboardingUseCase})
    : super(const OnboardingState());

  final SaveOnboardingUseCase saveOnboardingUseCase;

  final PageController pageController = PageController();

  final int totalPages = 3;

  void onPageChanged(int index) {
    emit(
      state.copyWith(currentPage: index, isLastPage: index == totalPages - 1),
    );
  }

  Future<void> nextPage() async {
    if (state.isLastPage) {
      finishOnboarding();
      return;
    }

    await pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<void> skip() async {
    await finishOnboarding();
  }

  Future<void> finishOnboarding() async {
    await saveOnboardingUseCase();

    emit(state.copyWith(completed: true));
  }
}
