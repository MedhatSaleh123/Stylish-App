import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  final String label;
  final T value;
  final List<T> items;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.divider),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),

          const SizedBox(width: 6),

          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                value: value,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: onChanged,
                items: items.map((item) {
                  return DropdownMenuItem<T>(
                    value: item,
                    child: Text(item.toString()),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
