import 'package:flutter/material.dart';

import 'dot_indextor.dart';
import 'next_button.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [DotIndicator(), NextButton()],
      ),
    );
  }
}
