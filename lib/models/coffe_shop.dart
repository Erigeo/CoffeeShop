import 'package:coffee_store/models/product.dart';

class CoffeShop {
  final String name;
  final String address;
  final String icon;
  final String banner;
  final List<Product> products;

  CoffeShop(
      {required this.name,
      required this.address,
      required this.icon,
      required this.banner,
      required this.products});
}
