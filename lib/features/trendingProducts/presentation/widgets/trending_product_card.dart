import 'package:stylish_app/features/trendingProducts/data/models/trending_product_model.dart';
import 'package:flutter/material.dart';

class TrendingProductCard extends StatelessWidget {
  const TrendingProductCard({super.key, required this.trendingProduct});

  final TrendingProductModel trendingProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              child: Image.asset(
                trendingProduct.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trendingProduct.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    trendingProduct.subTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
                  ),

                  const Spacer(),

                  Text(
                    "₹${trendingProduct.price}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 15),
                      const Icon(Icons.star, color: Colors.amber, size: 15),
                      const Icon(Icons.star, color: Colors.amber, size: 15),
                      const Icon(Icons.star, color: Colors.amber, size: 15),
                      const Icon(Icons.star, color: Colors.grey, size: 15),

                      const SizedBox(width: 2),

                      Text(
                        trendingProduct.rate,
                        style: const TextStyle(fontSize: 12),
                      ),

                      const SizedBox(width: 4),

                      Text(
                        "(${trendingProduct.reviews})",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
