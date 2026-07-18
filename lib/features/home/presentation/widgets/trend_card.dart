import 'package:flutter/material.dart';
import 'package:stylish_app/features/home/data/models/product_model1.dart';

import 'price_widget.dart';

class TrendCard extends StatelessWidget {
  const TrendCard({super.key, required this.product});

  final ProductModel1 product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              product.image,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            product.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 4),

          Text(
            product.subtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),

          const SizedBox(height: 8),

          PriceWidget(
            price: product.price,
            oldPrice: product.oldPrice,
            discount: product.discount,
          ),
        ],
      ),
    );
  }
}
