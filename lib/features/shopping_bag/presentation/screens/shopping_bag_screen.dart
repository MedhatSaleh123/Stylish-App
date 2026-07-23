import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/features/shopping_bag/presentation/cubits/shopping_bag_cubit.dart';
import 'package:stylish_app/features/shopping_bag/presentation/cubits/shopping_bag_state.dart';

import '../widgets/checkout_bottom_bar.dart';
import '../widgets/coupon_section.dart';
import '../widgets/payment_details.dart';
import '../widgets/shopping_bag_item.dart';

class ShoppingBagScreen extends StatelessWidget {
  const ShoppingBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ShoppingBagCubit(),
      child: Scaffold(
        backgroundColor: const Color(0xffF7F7F7),

        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              const Text(
                "Shopping Bag",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
          ),
        ),

        bottomNavigationBar: const CheckoutBottomBar(),

        body: BlocBuilder<ShoppingBagCubit, ShoppingBagState>(
          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                ...List.generate(
                  state.items.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: ShoppingBagItem(
                      item: state.items[index],
                      index: index,
                    ),
                  ),
                ),

                const CouponSection(),

                const SizedBox(height: 16),

                const PaymentDetails(),

                const SizedBox(height: 100),
              ],
            );
          },
        ),
      ),
    );
  }
}
