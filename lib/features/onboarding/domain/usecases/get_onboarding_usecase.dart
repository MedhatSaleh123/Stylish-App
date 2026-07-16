import 'package:stylish_app/features/onboarding/domain/repo/onboarding_repository.dart';

class GetOnboardingUseCase {
  final OnboardingRepository repository;

  GetOnboardingUseCase(this.repository);

  Future<bool> call() {
    return repository.isOnboardingVisited();
  }
}
