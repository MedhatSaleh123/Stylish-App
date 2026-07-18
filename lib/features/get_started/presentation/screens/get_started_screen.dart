import 'package:flutter/material.dart';
import 'package:stylish_app/features/get_started/presentation/widgets/get_started_background.dart';
import 'package:stylish_app/features/get_started/presentation/widgets/get_started_content.dart';
import 'package:stylish_app/features/get_started/presentation/widgets/get_started_shadow.dart';

import '../../../../core/widgets/custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GetStartedBackground(),

          GetStartedShadow(),

          GetStartedContent(),
        ],
      ),
    );
  }
}
