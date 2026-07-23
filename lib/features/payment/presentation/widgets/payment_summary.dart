import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:stylish_app/features/payment/presentation/cubits/payment_state.dart';

import '../../../../core/widgets/custom_divider.dart';

import 'payment_summary_row.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (_, state) {
        return Column(
          children: [
            PaymentSummaryRow(
              title: "Order",
              value: "₹ ${state.summary.orderPrice.toStringAsFixed(0)}",
            ),

            PaymentSummaryRow(
              title: "Shipping",
              value: "₹ ${state.summary.shipping.toStringAsFixed(0)}",
            ),

            PaymentSummaryRow(
              title: "Total",
              value: "₹ ${state.summary.total.toStringAsFixed(0)}",
              isTotal: true,
            ),

            const SizedBox(height: 12),

            const CustomDivider(),
          ],
        );
      },
    );
  }
}
