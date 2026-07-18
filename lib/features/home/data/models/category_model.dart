class CategoryModel {
  final String image;
  final String title;
  const CategoryModel({required this.image, required this.title});
}

final List<CategoryModel> categoryList = const [
  CategoryModel(image: "assets/home/item1.png", title: "Beauty"),
  CategoryModel(image: "assets/home/item2.png", title: "Fashion"),
  CategoryModel(image: "assets/home/item3.png", title: "Kids"),
  CategoryModel(image: "assets/home/item4.png", title: "Mens"),
  CategoryModel(image: "assets/home/item5.png", title: "Womans"),
];
