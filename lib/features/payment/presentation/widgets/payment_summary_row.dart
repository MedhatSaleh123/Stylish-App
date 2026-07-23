import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class PaymentSummaryRow extends StatelessWidget {
  const PaymentSummaryRow({
    super.key,
    required this.title,
    required this.value,
    this.isTotal = false,
  });

  final String title;
  final String value;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: isTotal ? 18 : 16,
      fontWeight: isTotal ? FontWeight.w600 : FontWeight.w400,
      color: isTotal ? AppColors.black : Colors.grey.shade500,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(child: Text(title, style: textStyle)),
          Text(value, style: textStyle.copyWith(color: AppColors.black)),
        ],
      ),
    );
  }
}
