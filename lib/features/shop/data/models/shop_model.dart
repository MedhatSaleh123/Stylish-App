class ShopModel {
  final String name;
  final String brand;
  final double price;
  final double oldPrice;
  final int discount;
  final double rating;
  final int reviews;
  final String description;
  final List<String> images;
  final List<String> sizes;

  ShopModel({
    required this.name,
    required this.brand,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.rating,
    required this.reviews,
    required this.description,
    required this.images,
    required this.sizes,
  });
}

final shopProduct = ShopModel(
  name: "Nike Sneakers",
  brand: "Vision Alta Men's Shoes Size (All Colours)",
  price: 1500,
  oldPrice: 2999,
  discount: 50,
  rating: 4.5,
  reviews: 56890,
  description:
      "Perhaps the most iconic sneaker of all-time, this original 'Chicago' colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time.",
  images: [
    "assets/shop/shoes.png",
    "assets/shop/shoes.png",
    "assets/shop/shoes.png",
    "assets/shop/shoes.png",
  ],
  sizes: ["6 UK", "7 UK", "8 UK", "9 UK", "10 UK"],
);
