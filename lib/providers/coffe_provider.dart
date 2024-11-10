import 'package:coffee_store/models/coffe_shop.dart';
import 'package:coffee_store/models/product.dart';
import 'package:flutter/material.dart';

class CoffeProvider extends ChangeNotifier {
  final List<CoffeShop> _coffeeShop = [
    CoffeShop(
      name: 'Café Central',
      address: 'Rua do Café, 123 - Centro',
      icon: 'assets/icons/cafe_icon.png',
      banner: 'assets/images/cafe_banner.png',
      products: [
        Product(
          name: 'Cappuccino',
          price: 10.50,
          quantity: 30,
          description: 'Café cremoso com leite vaporizado e chocolate.',
          image: 'assets/images/cappuccino.png',
        ),
        Product(
          name: 'Espresso',
          price: 7.00,
          quantity: 50,
          description: 'Café preto e forte, servido sem leite.',
          image: 'assets/images/espresso.png',
        ),
      ],
    )
  ];

  List<CoffeShop> get coffeShop => _coffeeShop;
}
