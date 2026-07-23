import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/constants/app_colors.dart';
import 'package:stylish_app/features/shopping_bag/presentation/cubits/shopping_bag_cubit.dart';
import 'package:stylish_app/features/shopping_bag/presentation/cubits/shopping_bag_state.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/custom_divider.dart';

import 'payment_row.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingBagCubit, ShoppingBagState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.paymentDetails,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),

              const SizedBox(height: 18),

              PaymentRow(
                title: AppStrings.orderAmount,
                value: "₹${state.orderAmount.toStringAsFixed(0)}",
              ),

              PaymentRow(
                title: AppStrings.convenience,
                value: "Apply Coupon",
                valueColor: AppColors.primary,
              ),

              PaymentRow(
                title: AppStrings.deliveryFee,
                value: "Free",
                valueColor: AppColors.primary,
              ),

              const CustomDivider(),

              PaymentRow(
                title: AppStrings.orderTotal,
                value: "₹${state.total.toStringAsFixed(0)}",
                isTotal: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
