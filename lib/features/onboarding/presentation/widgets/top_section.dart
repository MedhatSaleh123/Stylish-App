import 'package:flutter/material.dart';

import 'page_counter.dart';
import 'skip_button.dart';
class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [PageCounter(), SkipButton()],
      ),
    );
  }
}
