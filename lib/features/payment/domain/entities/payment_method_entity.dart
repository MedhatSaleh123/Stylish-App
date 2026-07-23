class PaymentMethodEntity {
  final String logo;
  final String cardNumber;
  final bool isSelected;

  const PaymentMethodEntity({
    required this.logo,
    required this.cardNumber,
    required this.isSelected,
  });

  PaymentMethodEntity copyWith({
    String? logo,
    String? cardNumber,
    bool? isSelected,
  }) {
    return PaymentMethodEntity(
      logo: logo ?? this.logo,
      cardNumber: cardNumber ?? this.cardNumber,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
