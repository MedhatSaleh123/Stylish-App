import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardingLocalDataSource {
  Future<void> saveOnboarding();

  Future<bool> isOnboardingVisited();
}

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  final SharedPreferences prefs;

  OnboardingLocalDataSourceImpl(this.prefs);

  static const String key = "onboarding";

  @override
  Future<void> saveOnboarding() async {
    await prefs.setBool(key, true);
  }

  @override
  Future<bool> isOnboardingVisited() async {
    return prefs.getBool(key) ?? false;
  }
}
