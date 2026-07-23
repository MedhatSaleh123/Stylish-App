class PaymentSummaryEntity {
  final double orderPrice;
  final double shipping;

  const PaymentSummaryEntity({
    required this.orderPrice,
    required this.shipping,
  });

  double get total => orderPrice + shipping;
}
