import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/constants/app_router.dart';
import 'package:stylish_app/features/shopping_bag/presentation/cubits/shopping_bag_cubit.dart';
import 'package:stylish_app/features/shopping_bag/presentation/cubits/shopping_bag_state.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';

class CheckoutBottomBar extends StatelessWidget {
  const CheckoutBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 12, color: Colors.black12)],
        ),
        child: BlocBuilder<ShoppingBagCubit, ShoppingBagState>(
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "₹7,000",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: const Text(
                          "View Details",
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: CustomButton(
                    text: "Proceed to Payment",
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppName.payment);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
