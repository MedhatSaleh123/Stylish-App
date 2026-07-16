import 'package:flutter/material.dart';
import 'package:stylish_app/features/login/presentation/screens/login_screen.dart';
import 'package:stylish_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:stylish_app/features/splash/presentation/screens/splash_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppName.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppName.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case AppName.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}

class AppName {
  static const splash = "/splash";
  static const onBoarding = "/onBoarding";
  static const login = "/login";
}
