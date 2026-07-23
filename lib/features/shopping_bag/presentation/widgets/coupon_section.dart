import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class CouponSection extends StatelessWidget {
  const CouponSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            color: Colors.black,
            "assets/shop/coupon.png",
            height: 30,
          ),

          SizedBox(width: 12),

          Expanded(
            child: Text(
              "Apply Coupons",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),

          Text(
            "Select",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
