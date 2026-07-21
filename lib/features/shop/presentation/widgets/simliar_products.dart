import 'package:flutter/material.dart';
import 'package:stylish_app/features/shop/data/models/similar_model.dart';

class SimilarProductList extends StatelessWidget {
  const SimilarProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: similarProducts.length,
        separatorBuilder: (_, _) => const SizedBox(width: 12),
        itemBuilder: (_, index) =>
            SimilarProductCard(product: similarProducts[index]),
      ),
    );
  }
}

class SimilarProductCard extends StatelessWidget {
  const SimilarProductCard({super.key, required this.product});

  final SimilarProduct product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  product.image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              if (product.favorite)
                const Positioned(
                  right: 8,
                  bottom: 8,
                  child: CircleAvatar(radius: 3, backgroundColor: Colors.red),
                ),
            ],
          ),

          const SizedBox(height: 6),

          Text(
            product.title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),

          const SizedBox(height: 2),

          Text(
            product.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
              height: 1.3,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            product.price,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
          ),

          const SizedBox(height: 3),

          Row(
            children: [
              ...List.generate(
                4,
                (_) =>
                    const Icon(Icons.star, size: 11, color: Color(0xffF8A401)),
              ),
              const Icon(Icons.star_half, size: 11, color: Color(0xffF8A401)),
              const SizedBox(width: 4),
              Text(
                "${product.rating}",
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
              const SizedBox(width: 2),
              Text(
                product.reviews,
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
