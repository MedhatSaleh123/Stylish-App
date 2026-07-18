import 'package:flutter/material.dart';
import 'package:stylish_app/features/home/presentation/widgets/home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffF9F9F9), body: HomePage());
  }
}
