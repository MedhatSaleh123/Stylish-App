import 'package:stylish_app/features/onboarding/data/models/onboarding_model.dart';

class OnBoardingData {
  static const List<OnBoardingModel> pages = [
    OnBoardingModel(
      image: "assets/splash/splash1.png",
      title: "Choose Products",
      description:
          "Amet minim mollit non deserunt ullamco est \n sit aliqua dolor do amet sint. Velit officia \n consequat duis enim velit mollit.",
    ),

    OnBoardingModel(
      image: "assets/splash/splash2.png",
      title: "Make Payment",

      description:
          "Amet minim mollit non deserunt ullamco est \n sit aliqua dolor do amet sint. Velit officia \n consequat duis enim velit mollit.",
    ),

    OnBoardingModel(
      image: "assets/splash/splash3.png",
      title: "Get Your Order",
      description:
          "Amet minim mollit non deserunt ullamco est \n sit aliqua dolor do amet sint. Velit officia \n consequat duis enim velit mollit.",
    ),
  ];
}
