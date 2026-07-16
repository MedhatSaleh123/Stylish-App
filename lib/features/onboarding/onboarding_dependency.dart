import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';
import 'package:stylish_app/features/onboarding/data/repo/onboarding_repository_impl.dart';

import 'data/datasource/onboarding_local_data_source.dart';

import 'domain/repo/onboarding_repository.dart';
import 'domain/usecases/get_onboarding_usecase.dart';
import 'domain/usecases/save_onboarding_usecase.dart';
import 'presentation/cubits/onboarding_cubit.dart';

final sl = GetIt.instance;

void initOnBoarding() {
  /// DataSource
  sl.registerLazySingleton<OnboardingLocalDataSource>(
    () => OnboardingLocalDataSourceImpl(sl<SharedPreferences>()),
  );

  /// Repository
  sl.registerLazySingleton<OnboardingRepository>(
    () => OnboardingRepositoryImpl(sl()),
  );

  /// UseCases
  sl.registerLazySingleton(() => SaveOnboardingUseCase(sl()));

  sl.registerLazySingleton(() => GetOnboardingUseCase(sl()));

  /// Cubit
  sl.registerFactory(() => OnboardingCubit(saveOnboardingUseCase: sl()));
}
