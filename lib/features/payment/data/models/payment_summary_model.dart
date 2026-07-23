import '../../domain/entities/payment_summary_entity.dart';

class PaymentSummaryModel extends PaymentSummaryEntity {
  const PaymentSummaryModel({
    required super.orderPrice,
    required super.shipping,
  });

  factory PaymentSummaryModel.fake() {
    return const PaymentSummaryModel(orderPrice: 7000, shipping: 30);
  }
}
