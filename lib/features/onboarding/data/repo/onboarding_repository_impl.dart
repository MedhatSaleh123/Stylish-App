import 'package:stylish_app/features/onboarding/data/datasource/onboarding_local_data_source.dart';
import 'package:stylish_app/features/onboarding/domain/repo/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource local;

  OnboardingRepositoryImpl(this.local);

  @override
  Future<void> saveOnboarding() {
    return local.saveOnboarding();
  }

  @override
  Future<bool> isOnboardingVisited() {
    return local.isOnboardingVisited();
  }
}
