import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stylish_app/core/widgets/custom_app_bar.dart';
import 'package:stylish_app/core/widgets/custom_search_field.dart';
import 'package:stylish_app/features/trendingProducts/data/models/trending_product_model.dart';
import 'package:stylish_app/features/trendingProducts/presentation/widgets/trending_product_card.dart';

import '../../../../core/widgets/custom_title.dart';

class TrendingProductsScreen extends StatelessWidget {
  const TrendingProductsScreen({super.key});
  double getItemHeight(int index) {
    final row = index ~/ 2;

    if (row.isEven) {
      return index.isEven ? 320 : 260;
    } else {
      return index.isEven ? 260 : 320;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 5),
                  CustomAppBar(),
                  SizedBox(height: 20),
                  CustomSearchField(),
                  SizedBox(height: 22),
                  CustomTitle(text: "52,082+ Items"),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverMasonryGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childCount: trendingProducts.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: getItemHeight(index),
                  child: TrendingProductCard(
                    trendingProduct: trendingProducts[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
