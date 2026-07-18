class ProductModel1 {
  final String image;
  final String title;
  final String subtitle;
  final double price;
  final double oldPrice;
  final int discount;

  const ProductModel1({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });
}

final List<ProductModel1> trendProducts = const [
  ProductModel1(
    image: 'assets/home/trend1.png',
    title: 'IWC Schaffhausen',
    subtitle: '2021 Pilot\'s Watch SIHH 2019 44mm',
    price: 650.00,
    oldPrice: 1599,
    discount: 60,
  ),
  ProductModel1(
    image: 'assets/home/trend2.png',

    title: 'Labbin White',
    subtitle: 'Sneakers For Men and Female',
    price: 650,
    oldPrice: 1250,
    discount: 70,
  ),
  ProductModel1(
    image: 'assets/home/trend1.png',
    title: 'IWC Schaffhausen',
    subtitle: '2021 Pilot\'s Watch SIHH 2019 44mm',
    price: 650.00,
    oldPrice: 1599,
    discount: 60,
  ),
  ProductModel1(
    image: 'assets/home/trend2.png',

    title: 'Labbin White',
    subtitle: 'Sneakers For Men and Female',
    price: 650,
    oldPrice: 1250,
    discount: 70,
  ),
];
