import 'package:flutter/material.dart';
import 'package:stylish_app/features/checkout/data/models/checkout_model.dart';
import 'package:stylish_app/features/checkout/presentation/widgets/product_price.dart';
import 'package:stylish_app/features/checkout/presentation/widgets/rating_widget.dart';

import 'variation_chip.dart';

class ProductItemCard extends StatelessWidget {
  final CheckoutModel product;

  const ProductItemCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  product.image,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          "Variations: ",
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: product.variations
                              .map(
                                (variation) => VariationChip(title: variation),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                    ProductRating(rating: product.rating),

                    const SizedBox(height: 10),

                    PriceSection(
                      price: product.price,
                      oldPrice: product.oldPrice,
                      discount: product.discount,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Order (1) : ",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$${product.price.toStringAsFixed(0)}.00",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
