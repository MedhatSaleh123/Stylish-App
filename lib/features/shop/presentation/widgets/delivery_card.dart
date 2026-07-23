import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/app_colors.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .04),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          /// Delivery Icon
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.local_shipping_outlined,
              color: AppColors.primary,
              size: 28,
            ),
          ),

          const SizedBox(width: 16),

          /// Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Delivery in",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  "Within 1 Hour",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          /// Arrow
          const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
        ],
      ),
    );
  }
}
