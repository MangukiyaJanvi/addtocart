import 'package:flutter/material.dart';

import '../model/cart_model.dart';

class CartProvider extends ChangeNotifier {
  List<CartModel> l1 = [
    CartModel(name: 'Grapes', img: "🍇", price: '60', qty: 1),
    CartModel(name: 'Melon', img: '🍈', price: '150', qty: 1),
    CartModel(name: 'WaterMelon', img: '🍉', price: '80', qty: 1),
    CartModel(name: 'Tangerine', img: '🍊', price: '200', qty: 1),
    CartModel(name: 'Banana', img: '🍌', price: '50', qty: 1),
    CartModel(name: 'PineApple', img: '🍍', price: '90', qty: 1),
    CartModel(name: 'Peach', img: '🍑', price: '250', qty: 1),
    CartModel(name: 'Cherries', img: '🍒', price: '350', qty: 1),
    CartModel(name: 'Strawberry', img: '🍓', price: '180', qty: 1),
    CartModel(name: 'Lemon', img: '🍋', price: '100', qty: 1),
    CartModel(name: 'Pear', img: '🍐', price: '100', qty: 1),
    CartModel(name: 'GreenApple', img: '🍎', price: '100', qty: 1),
    CartModel(name: 'RedApple', img: '🍏', price: '100', qty: 1),
  ];

  List<CartModel> cart=[];
  void Cart(CartModel c1)
  {
    cart.add(c1);
  }
  void Update(int index,CartModel c1)
  {
    cart[index] = c1;
    notifyListeners();
  }
}
