import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });

  final double price;
  final double oldPrice;
  final int discount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\$${price.toStringAsFixed(0)}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            Text(
              '\$${oldPrice.toStringAsFixed(0)}',
              style: const TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              '$discount% off',
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
