// ignore_for_file: unused_import

import 'package:flutter/material.dart';

// class Product {
//   final String name;
//   final String image;
//   final String price;
//   final String deskripsi;

//   Product({required this.name, required this.image, required this.price, required this.deskripsi});

// }

// class DetailProductProvider extends ChangeNotifier {
//     final List<Product> _detailProduct = [];

//   List<Product> get detail => _detailProduct;
//     void addToDetail(Product product) {
//     _detailProduct.add(product);
//     notifyListeners();
//   }
// }

// class DetailProductProvider extends ChangeNotifier {
//   // Informasi produk
//   final Map<String, Product> _products = {
//     'productId1': Product(
//       id: 'productId1',
//       name: 'ALEX/LAGKAPTEN',
//       description: 'Meja, hijau muda/putih, 120x60 cm',
//       price: 'Rp1.909.000',
//       imageUrl: 'assets/Rectangle 16.png',
//     ),
//     // Tambahkan produk lain jika diperlukan
//   };

//   // Mendapatkan daftar produk
//   List<Product> get products => _products.values.toList();

//   // Mendapatkan detail produk berdasarkan ID
//   Product getProductById(String productId) {
//     return _products[productId]!;
//   }
// }

// class Product {
//   final String id;
//   final String name;
//   final String description;
//   final String price;
//   final String imageUrl;

//   Product({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.imageUrl,
//   });
// }


class ProductProvider extends ChangeNotifier {
  String _selectedProductName = "";
  String _selectedProductImage = "";
  String _selectedProductPrice = "";
  String _selectedProductDesk = "";

  String get selectedProductName => _selectedProductName;
  String get selectedProductImage => _selectedProductImage;
  String get selectedProductPrice => _selectedProductPrice;
  String get selectedProductDesk => _selectedProductDesk;

  void setSelectedProduct(String name, String image, String price, String desk) {
    _selectedProductName = name;
    _selectedProductImage = image;
    _selectedProductDesk = desk;
    _selectedProductPrice = price;
    notifyListeners();
  }
}

