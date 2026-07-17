import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_app/features/onboarding/onboarding_dependency.dart';

final sl = GetIt.instance;
Future<void> init() async {
  final prefs = await SharedPreferences.getInstance();

  sl.registerLazySingleton<SharedPreferences>(() => prefs);
  initOnBoarding();
}
