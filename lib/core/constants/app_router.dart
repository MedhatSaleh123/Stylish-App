import 'package:flutter/material.dart';
import 'package:stylish_app/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:stylish_app/features/auth/presentation/screens/login_screen.dart';
import 'package:stylish_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:stylish_app/features/checkout/presentation/screens/checkout_screen.dart';
import 'package:stylish_app/features/get_started/presentation/screens/get_started_screen.dart';
import 'package:stylish_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:stylish_app/features/payment/presentation/screens/payment_screen.dart';
import 'package:stylish_app/features/profile/presenation/screens/profile_screen.dart';
import 'package:stylish_app/features/shop/presentation/screens/shop_screen.dart';
import 'package:stylish_app/features/shopping_bag/presentation/screens/shopping_bag_screen.dart';
import 'package:stylish_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:stylish_app/features/trendingProducts/presentation/screens/trending_products_screen.dart';

import '../../features/home/presentation/screens/home_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppName.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppName.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case AppName.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppName.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case AppName.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case AppName.getStarted:
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());
      case AppName.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppName.trendingProducts:
        return MaterialPageRoute(
          builder: (_) => const TrendingProductsScreen(),
        );
      case AppName.shop:
        return MaterialPageRoute(builder: (_) => const ShopScreen());
      case AppName.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case AppName.checkout:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      case AppName.shoppingBag:
        return MaterialPageRoute(builder: (_) => const ShoppingBagScreen());
      case AppName.payment:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}

abstract class AppName {
  static const splash = "/splash";
  static const onBoarding = "/onBoarding";
  static const login = "/login";
  static const signUp = "/signUp";
  static const forgotPassword = "/forgotPassword";
  static const getStarted = "/getStarted";
  static const home = "/home";
  static const trendingProducts = "/trendingProducts";
  static const shop = "/shop";
  static const profile = "/profile";
  static const checkout = "/checkout";
  static const shoppingBag = "/shoppingBag";
  static const payment = "/payment";
}
