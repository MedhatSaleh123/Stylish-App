import '../repo/onboarding_repository.dart';

class SaveOnboardingUseCase {
  final OnboardingRepository repository;

  SaveOnboardingUseCase(this.repository);

  Future<void> call() {
    return repository.saveOnboarding();
  }
}
