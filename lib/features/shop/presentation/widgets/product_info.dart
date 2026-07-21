import 'package:flutter/material.dart';
import 'package:stylish_app/features/shop/data/models/shop_model.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.product});

  final ShopModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Brand
        const SizedBox(height: 8),

        /// Product Name + Favorite
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                product.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.05),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Icon(Icons.favorite_border, color: Colors.red),
            ),
          ],
        ),

        Text(
          product.brand,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 12),

        /// Rating
        Row(
          children: [
            ...List.generate(
              5,
              (index) => Padding(
                padding: EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.star,
                  size: 18,
                  color: index == 4 ? Colors.grey : Color(0xffEDB310),
                ),
              ),
            ),

            const SizedBox(width: 8),

            Text(
              product.rating.toString(),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),

            const SizedBox(width: 6),

            Text(
              "(${product.reviews} Reviews)",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
            ),
          ],
        ),

        const SizedBox(height: 6),

        /// Price
        Row(
          children: [
            Text(
              "₹${product.price.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xffFA7189),
              ),
            ),

            const SizedBox(width: 12),

            Text(
              "₹${product.oldPrice.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),

            const SizedBox(width: 10),

            Text(
              "${product.discount}% OFF",
              style: const TextStyle(
                color: Color(0xffFA7189),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
