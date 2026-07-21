import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/features/home/presentation/widgets/custom_bottom_nav.dart';
import 'package:stylish_app/features/home/presentation/widgets/home_page.dart';
import 'package:stylish_app/features/trendingProducts/presentation/screens/trending_products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    TrendingProductsScreen(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: IndexedStack(index: currentIndex, children: pages),
      // body: HomePage(),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
