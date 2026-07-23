import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/app_router.dart';
import 'package:stylish_app/core/widgets/custom_title.dart';
import 'package:stylish_app/features/shop/data/models/shop_model.dart';
import 'package:stylish_app/features/shop/presentation/widgets/action_card.dart';
import 'package:stylish_app/features/shop/presentation/widgets/bottom_action_buttons.dart';
import 'package:stylish_app/features/shop/presentation/widgets/delivery_card.dart';
import 'package:stylish_app/features/shop/presentation/widgets/product_description.dart';
import 'package:stylish_app/features/shop/presentation/widgets/product_features.dart';
import 'package:stylish_app/features/shop/presentation/widgets/product_image_slider.dart';
import 'package:stylish_app/features/shop/presentation/widgets/product_info.dart';
import 'package:stylish_app/features/shop/presentation/widgets/simliar_products.dart';
import 'package:stylish_app/features/shop/presentation/widgets/size_selector.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImageSlider(images: shopProduct.images),

              const SizedBox(height: 18),

              SizeSelector(sizes: shopProduct.sizes),

              const SizedBox(height: 20),

              ProductInfo(product: shopProduct),

              const SizedBox(height: 10),

              ProductDescription(description: shopProduct.description),

              const SizedBox(height: 18),

              const ProductFeatures(),

              const SizedBox(height: 15),

              BottomActionButtons(
                onCartPressed: () {
                  // Add To Cart
                },
                onBuyPressed: () {
                  Navigator.of(context).pushNamed(AppName.checkout);
                },
              ),

              const SizedBox(height: 15),

              const DeliveryCard(),

              const SizedBox(height: 15),
              Row(
                children: [
                  ActionCard(
                    title: "View Similar",
                    icon: Icons.remove_red_eye_outlined,
                    onTap: () {},
                  ),

                  const SizedBox(width: 8),

                  ActionCard(
                    title: "Add to Compare",
                    icon: Icons.compare_arrows_outlined,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 15),

              Text(
                "Similar To ",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 15),

              CustomTitle(text: "282+ Iteams"),
              const SizedBox(height: 15),
              SimilarProductList(),
            ],
          ),
        ),
      ),
    );
  }
}
