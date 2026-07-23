import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/app_router.dart';
import 'package:stylish_app/features/checkout/data/models/checkout_model.dart';
import 'package:stylish_app/features/checkout/presentation/widgets/add_address_button.dart';
import 'package:stylish_app/features/checkout/presentation/widgets/checkout_app_bar.dart';
import 'package:stylish_app/features/checkout/presentation/widgets/delivery_address_card.dart';
import 'package:stylish_app/features/checkout/presentation/widgets/product_item_card.dart';
import 'package:stylish_app/features/checkout/presentation/widgets/shopping_list_title.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: const CheckoutAppBar(),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            /// Delivery Address
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 20),
                const Text(
                  "  Delivery Address",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),

            const SizedBox(height: 14),

            Row(
              children: const [
                Expanded(flex: 5, child: DeliveryAddressCard()),

                SizedBox(width: 12),

                Expanded(flex: 2, child: AddAddressCard()),
              ],
            ),

            const SizedBox(height: 15),

            const ShoppingListTitle(),

            const SizedBox(height: 15),

            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: checkoutProducts.length,
              separatorBuilder: (_, _) => const SizedBox(height: 18),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppName.shoppingBag);
                  },
                  child: ProductItemCard(product: checkoutProducts[index]),
                );
              },
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
