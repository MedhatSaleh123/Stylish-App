part of 'onboarding_cubit.dart';

class OnboardingState {
  final int currentPage;
  final bool isLastPage;
  final bool completed;

  const OnboardingState({
    this.currentPage = 0,
    this.isLastPage = false,
    this.completed = false,
  });

  OnboardingState copyWith({
    int? currentPage,
    bool? isLastPage,
    bool? completed,
  }) {
    return OnboardingState(
      currentPage: currentPage ?? this.currentPage,
      isLastPage: isLastPage ?? this.isLastPage,
      completed: completed ?? this.completed,
    );
  }
}
