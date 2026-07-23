import '../../domain/entities/shopping_bag_entity.dart';

class ShoppingBagState {
  final List<ShoppingBagEntity> items;

  const ShoppingBagState({required this.items});

  double get orderAmount =>
      items.fold(0, (sum, item) => sum + item.price * item.quantity);

  double get convenienceFee => 0;

  double get deliveryFee => 0;

  double get total => orderAmount + convenienceFee + deliveryFee;

  ShoppingBagState copyWith({List<ShoppingBagEntity>? items}) {
    return ShoppingBagState(items: items ?? this.items);
  }
}
