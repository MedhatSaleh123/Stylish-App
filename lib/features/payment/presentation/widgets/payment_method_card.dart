import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/payment_method_entity.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    super.key,
    required this.method,
    required this.onTap,
  });

  final PaymentMethodEntity method;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        decoration: BoxDecoration(
          color: Color(0xffF4F4F4),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1.3,
            color: method.isSelected ? AppColors.primary : Colors.transparent,
          ),
        ),
        child: Row(
          children: [
            Image.asset(method.logo, height: 24),

            const Spacer(),

            Text(
              method.cardNumber,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
