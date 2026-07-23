import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/payment_method_model.dart';
import '../../data/models/payment_summary_model.dart';
import 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit()
    : super(
        PaymentState(
          summary: PaymentSummaryModel.fake(),
          methods: PaymentMethodModel.fakeData(),
        ),
      );

  void selectMethod(int index) {
    final methods = state.methods
        .asMap()
        .entries
        .map((entry) => entry.value.copyWith(isSelected: entry.key == index))
        .toList();

    emit(state.copyWith(methods: methods));
  }
}
