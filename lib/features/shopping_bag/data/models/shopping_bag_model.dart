import 'package:stylish_app/features/shopping_bag/domain/entities/shopping_bag_entity.dart';

class ShoppingBagModel extends ShoppingBagEntity {
  const ShoppingBagModel({
    required super.image,
    required super.title,
    required super.subTitle,
    required super.size,
    required super.quantity,
    required super.price,
  });

  factory ShoppingBagModel.fake() {
    return const ShoppingBagModel(
      image: "assets/home/deal1.png",
      title: "Women's Casual Wear",
      subTitle: "Checked Single-Breasted Blazer",
      size: "42",
      quantity: 1,
      price: 7000,
    );
  }
}
