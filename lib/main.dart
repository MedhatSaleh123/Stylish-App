import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/constants/app_router.dart';
import 'package:stylish_app/core/di/service_locator.dart';
import 'package:stylish_app/features/auth/presentation/bloc/authentication/auth_bloc.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await init();
  runApp(StylishApp());
}

class StylishApp extends StatelessWidget {
  const StylishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AuthBloc>()..add(CheckLoggingInEvent()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is SignedInPageState) {
            return MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xffF7F7F7),
                appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  surfaceTintColor: Colors.white,
                  scrolledUnderElevation: 0,
                ),
              ),

              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRouter.onGenerateRoute,

              initialRoute: AppName.home,
            );
          } else {
            return MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xffF7F7F7),
                appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  surfaceTintColor: Colors.white,
                  scrolledUnderElevation: 0,
                ),
              ),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRouter.onGenerateRoute,

              initialRoute: AppName.splash,
            );
          }
        },
      ),
    );
  }
}
