class HomeProductModel {
  final String image;
  final String title;
  final String description;
  final double price;
  final double oldPrice;
  final int discount;
  final double rate;
  final int reviews;

  const HomeProductModel({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.rate,
    required this.reviews,
  });
}

final List<HomeProductModel> homeProducts = const [
  HomeProductModel(
    image: "assets/home/deal1.png",
    title: "Women Printed Kurta",
    description: "Neque porro quisquam est qui dolorem ipsum quia",
    price: 1500,
    oldPrice: 2499,
    discount: 40,
    rate: 4.5,
    reviews: 56890,
  ),

  HomeProductModel(
    image: "assets/home/deal2.png",
    title: "HRX by Hrithik Roshan",
    description: "Neque porro quisquam est qui dolorem ipsum quia",
    price: 2499,
    oldPrice: 4999,
    discount: 50,
    rate: 4.8,
    reviews: 344567,
  ),
];
