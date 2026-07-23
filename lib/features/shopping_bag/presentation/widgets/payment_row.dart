import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
    required this.title,
    required this.value,
    this.isTotal = false,
    this.valueColor,
  });

  final String title;
  final String value;
  final bool isTotal;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: isTotal ? 17 : 15,
      fontWeight: isTotal ? FontWeight.w700 : FontWeight.w500,
      color: AppColors.black,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(child: Text(title, style: style)),
          Text(
            value,
            style: style.copyWith(color: valueColor ?? AppColors.black),
          ),
        ],
      ),
    );
  }
}
