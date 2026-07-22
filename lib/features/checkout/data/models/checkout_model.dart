class CheckoutModel {
  final String image;
  final String title;
  final double rating;
  final double price;
  final double oldPrice;
  final int discount;
  final List<String> variations;

  const CheckoutModel({
    required this.image,
    required this.title,
    required this.rating,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.variations,
  });
}

const List<CheckoutModel> checkoutProducts = [
  CheckoutModel(
    image: "assets/home/deal1.png",
    title: "Women's Casual Wear",
    rating: 4.8,
    price: 34,
    oldPrice: 64,
    discount: 33,
    variations: ["Black", "Red"],
  ),
  CheckoutModel(
    image: "assets/home/deal2.png",
    title: "Men's Shoes",
    rating: 4.7,
    price: 45,
    oldPrice: 67,
    discount: 28,
    variations: ["Green", "Grey"],
  ),
];
