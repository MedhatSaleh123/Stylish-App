class NavItemModel {
  final String icon;
  final String label;

  const NavItemModel({required this.icon, required this.label});
}

final List<NavItemModel> itemsNav = const [
  NavItemModel(icon: "assets/home/homeIcon2.png", label: "Home"),
  NavItemModel(icon: "assets/home/heartIcon.png", label: "Wishlist"),
  NavItemModel(icon: "assets/home/cartIcon.png", label: "Cart"),
  NavItemModel(icon: "assets/home/search.png", label: "Search"),
  NavItemModel(icon: "assets/home/setting.png", label: "Setting"),
];
