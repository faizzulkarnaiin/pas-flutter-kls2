
// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final String image;
  final String price;
  final int quantity;

  CartItem({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
}


class CartProvider extends ChangeNotifier {
  List<CartItem> _cartItems = [];
  List<CartItem> get cartItems => _cartItems;
  void addToCart(CartItem item) {
    _cartItems.add(item);
    notifyListeners();
  }
} 