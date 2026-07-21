import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_app_bar.dart';
import 'package:stylish_app/core/widgets/custom_search_field.dart';
import 'package:stylish_app/features/home/data/models/home_product_model.dart';
import 'package:stylish_app/features/home/data/models/product_model1.dart';
import 'package:stylish_app/features/home/presentation/widgets/category_list_view.dart';
import 'package:stylish_app/features/home/presentation/widgets/home_banner.dart';
import 'package:stylish_app/features/home/presentation/widgets/hot_summer.dart';
import 'package:stylish_app/features/home/presentation/widgets/product_card.dart';
import 'package:stylish_app/features/home/presentation/widgets/promo_card.dart';
import 'package:stylish_app/features/home/presentation/widgets/sponserd_item.dart';
import 'package:stylish_app/features/home/presentation/widgets/trend_card.dart';
import '../../../../core/widgets/custom_title.dart';
import '../widgets/deal_of_day_card.dart';
import '../widgets/special_offer_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              const CustomAppBar(),
              const SizedBox(height: 20),
              const CustomSearchField(),
              const SizedBox(height: 22),
              CustomTitle(text: "All Featured"),
              const SizedBox(height: 20),
              CategoryListView(),
              const SizedBox(height: 20),
              HomeBanner(),
              CustomCard(
                color: const Color(0xff4392F9),
                text1: 'Deal of the Day',
                text2: '22h 55m 20s remaining',
                icon: Icons.access_time,
                onPressed: () {},
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: homeProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: .56,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: homeProducts[index],
                    onTap: () {},
                  );
                },
              ),
              SpecialOfferCard(),
              PromoCard(),
              CustomCard(
                color: const Color(0xffFD6E86),
                text1: 'Trending Products',
                text2: 'Last Date 29/02/22',
                icon: Icons.calendar_today_outlined,
                onPressed: () {},
              ),

              SizedBox(
                height: 240,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendProducts.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 12),
                  itemBuilder: (_, index) {
                    return TrendCard(product: trendProducts[index]);
                  },
                ),
              ),
              SizedBox(height: 20),
              HotSummer(),
              SizedBox(height: 20),
              SponserdItem(),
            ],
          ),
        ),
      ),
    );
  }
}
