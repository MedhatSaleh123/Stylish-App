import 'package:flutter/material.dart';

class ProductFeatures extends StatelessWidget {
  const ProductFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: const [
        _FeatureCard(icon: Icons.location_on_outlined, title: "Nearest Store"),
        _FeatureCard(icon: Icons.verified_outlined, title: "VIP"),
        _FeatureCard(
          icon: Icons.assignment_return_outlined,
          title: "Return Policy",
        ),
        _FeatureCard(icon: Icons.payments_outlined, title: "Cash On Delivery"),
      ],
    );
  }
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 44) / 2,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: const Color(0xffFA7189).withOpacity(.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xffFA7189)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
