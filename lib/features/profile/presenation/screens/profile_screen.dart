import 'package:flutter/material.dart';
import 'package:stylish_app/features/profile/presenation/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: ProfileBody()),
    );
  }
}
