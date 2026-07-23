import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_app/core/network/network_info.dart';
import 'package:stylish_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:stylish_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:stylish_app/features/auth/domain/repositories/authentication_repository.dart';
import 'package:stylish_app/features/auth/domain/usecases/check_verification_usecase.dart';
import 'package:stylish_app/features/auth/domain/usecases/first_page_usecase.dart';
import 'package:stylish_app/features/auth/domain/usecases/google_auth_usecase.dart';
import 'package:stylish_app/features/auth/domain/usecases/logout_usecase.dart';
import 'package:stylish_app/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:stylish_app/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:stylish_app/features/auth/domain/usecases/verifiy_email_usecase.dart';
import 'package:stylish_app/features/auth/presentation/bloc/authentication/auth_bloc.dart';
import 'package:stylish_app/features/onboarding/onboarding_dependency.dart';

final sl = GetIt.instance;
Future<void> init() async {
  final prefs = await SharedPreferences.getInstance();

  sl.registerLazySingleton<SharedPreferences>(() => prefs);
  initOnBoarding();

  sl.registerFactory(
    () => AuthBloc(
      signInUseCase: sl(),
      signUpUseCase: sl(),
      firstPage: sl(),
      verifyEmailUseCase: sl(),
      checkVerificationUseCase: sl(),
      logOutUseCase: sl(),
      googleAuthUseCase: sl(),
    ),
  );

  // Usecases

  sl.registerLazySingleton(() => SignInUseCase(sl()));
  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  sl.registerLazySingleton(() => FirstPageUseCase(sl()));
  sl.registerLazySingleton(() => VerifyEmailUseCase(sl()));
  sl.registerLazySingleton(() => CheckVerificationUseCase(sl()));
  sl.registerLazySingleton(() => LogOutUseCase(sl()));
  sl.registerLazySingleton(() => GoogleAuthUseCase(sl()));

  // Repository

  sl.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImp(
      networkInfo: sl(),
      authRemoteDataSource: sl(),
    ),
  );

  // Datasources

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  sl.registerLazySingleton(() => InternetConnection());
}
