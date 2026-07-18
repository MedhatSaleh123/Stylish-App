import 'package:flutter/material.dart';
import 'package:stylish_app/features/home/data/models/banner_model.dart';
import 'package:stylish_app/features/home/presentation/widgets/banner_card.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  final PageController _controller = PageController();

  int currentPage = 0;

  final List<BannerModel> banners = [
    BannerModel(
      image: "assets/home/womanBackground.png",
      title: "50-40% OFF",
      subtitle: "Now in (product)\nAll colours",
      buttonText: "Shop Now",
    ),
    BannerModel(
      image: "assets/home/womanBackground.png",

      title: "Summer Sale",
      subtitle: "New Collection",
      buttonText: "Explore",
    ),
    BannerModel(
      image: "assets/home/womanBackground.png",

      title: "Special Offer",
      subtitle: "Best Prices",
      buttonText: "Buy Now",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 189,
          child: PageView.builder(
            controller: _controller,
            itemCount: banners.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (_, index) {
              final banner = banners[index];

              return BannerCard(banner: banner);
            },
          ),
        ),

        const SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            banners.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentPage == index ? 10 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentPage == index
                    ? Color(0xffFFA3B3)
                    : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
