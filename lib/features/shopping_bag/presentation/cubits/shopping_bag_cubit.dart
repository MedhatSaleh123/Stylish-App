import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/shopping_bag_model.dart';
import 'shopping_bag_state.dart';

class ShoppingBagCubit extends Cubit<ShoppingBagState> {
  ShoppingBagCubit()
    : super(ShoppingBagState(items: [ShoppingBagModel.fake()]));

  void changeSize(int index, String size) {
    final items = [...state.items];

    items[index] = ShoppingBagModel(
      image: items[index].image,
      title: items[index].title,
      subTitle: items[index].subTitle,
      size: size,
      quantity: items[index].quantity,
      price: items[index].price,
    );

    emit(state.copyWith(items: items));
  }

  void changeQuantity(int index, int quantity) {
    final items = [...state.items];

    items[index] = ShoppingBagModel(
      image: items[index].image,
      title: items[index].title,
      subTitle: items[index].subTitle,
      size: items[index].size,
      quantity: quantity,
      price: items[index].price,
    );

    emit(state.copyWith(items: items));
  }
}
