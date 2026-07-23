import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/widgets/custom_drop_down.dart';
import 'package:stylish_app/features/shopping_bag/presentation/cubits/shopping_bag_cubit.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/shopping_bag_entity.dart';

class ShoppingBagItem extends StatelessWidget {
  const ShoppingBagItem({super.key, required this.item, required this.index});

  final ShoppingBagEntity item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              item.image,
              width: 130,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 8),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: AppColors.black,
                  ),
                ),

                const SizedBox(height: 4),

                /// Subtitle
                Text(
                  item.subTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: AppColors.black, fontSize: 13),
                ),

                const SizedBox(height: 14),

                Row(
                  children: [
                    /// Size
                    Expanded(
                      child: CustomDropdown<String>(
                        label: "Size",
                        value: item.size,
                        items: const ["40", "41", "42", "43"],
                        onChanged: (value) {},
                      ),
                    ),

                    const SizedBox(width: 10),

                    /// Quantity
                    Expanded(
                      child: CustomDropdown<int>(
                        label: "Qty",
                        value: item.quantity,
                        items: const [1, 2, 3, 4, 5],
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                Text(
                  "₹ ${item.price.toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
