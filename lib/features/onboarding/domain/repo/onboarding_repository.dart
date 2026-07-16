abstract class OnboardingRepository {
  Future<void> saveOnboarding();

  Future<bool> isOnboardingVisited();
}
