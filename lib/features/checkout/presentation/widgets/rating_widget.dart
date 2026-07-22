import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  final double rating;

  const ProductRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating.toString(),
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 4),
        const Icon(Icons.star, color: Colors.amber, size: 18),
        const Icon(Icons.star, color: Colors.amber, size: 18),
        const Icon(Icons.star, color: Colors.amber, size: 18),
        const Icon(Icons.star, color: Colors.amber, size: 18),
        const Icon(Icons.star, color: Colors.grey, size: 18),
      ],
    );
  }
}
