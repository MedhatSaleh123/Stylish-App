class SimilarProduct {
  final String image;
  final String title;
  final String description;
  final String price;
  final double rating;
  final String reviews;
  final bool favorite;

  SimilarProduct({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviews,
    this.favorite = false,
  });
}

final similarProducts = [
  SimilarProduct(
    image: "assets/shop/nike1.png",
    title: "Nike Sneakers",
    description: "Nike Air Jordan Retro 1 Low\nMystic Black",
    price: "₹1,900",
    rating: 4.6,
    reviews: "46,890",
  ),
  SimilarProduct(
    image: "assets/shop/nike2.png",
    title: "Nike Sneakers",
    description: "Mid Peach Mocha Shoes For\nMan White Black Pink S..",
    price: "₹1,900",
    rating: 4.6,
    reviews: "2,56,890",
    favorite: true,
  ),
];
