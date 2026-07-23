import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/app_colors.dart';
import 'package:stylish_app/features/home/data/models/nav_item_model.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        height: 75,

        color: Colors.white,

        child: Row(
          children: List.generate(itemsNav.length, (index) {
            final selected = currentIndex == index;

            if (index == 2) {
              return Expanded(
                child: Transform.translate(
                  offset: const Offset(0, -25),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () => onTap(index),
                    child: Center(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          color: selected ? AppColors.primary : AppColors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 12),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            itemsNav[index].icon,
                            width: 24,
                            height: 24,
                            color: selected ? AppColors.white : AppColors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }

            return Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () => onTap(index),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: selected ? 1.2 : 1,
                      child: Image.asset(
                        itemsNav[index].icon,
                        width: 24,
                        height: 24,
                        color: selected ? AppColors.primary : AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      itemsNav[index].label,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: selected
                            ? FontWeight.w600
                            : FontWeight.w400,
                        color: selected ? AppColors.primary : AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
