import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: CustomButton(text: "Continue", onPressed: () {}),
    );
  }
}
