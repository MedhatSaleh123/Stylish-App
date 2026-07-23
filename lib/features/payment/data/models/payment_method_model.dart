import '../../domain/entities/payment_method_entity.dart';

class PaymentMethodModel extends PaymentMethodEntity {
  const PaymentMethodModel({
    required super.logo,
    required super.cardNumber,
    required super.isSelected,
  });

  static List<PaymentMethodModel> fakeData() {
    return const [
      PaymentMethodModel(
        logo: "assets/shop/visa.png",
        cardNumber: "********2109",
        isSelected: true,
      ),
      PaymentMethodModel(
        logo: "assets/shop/paypal.png",
        cardNumber: "********2109",
        isSelected: false,
      ),
      PaymentMethodModel(
        logo: "assets/shop/maestro.png",
        cardNumber: "********2109",
        isSelected: false,
      ),
      PaymentMethodModel(
        logo: "assets/shop/apple.png",
        cardNumber: "********2109",
        isSelected: false,
      ),
    ];
  }
}
