import 'package:flutter/material.dart';

class GetStartedShadow extends StatelessWidget {
  const GetStartedShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withValues(alpha: .15),
              Colors.black.withValues(alpha: .35),
              Colors.black.withValues(alpha: .65),
            ],
          ),
        ),
      ),
    );
  }
}
