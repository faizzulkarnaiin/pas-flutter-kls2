// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:pas_faiz/ikea/detail_product.dart';
import 'package:pas_faiz/ikea/home_screen.dart';
import 'package:pas_faiz/ikea/inspiration.dart';
import 'package:pas_faiz/ikea/keranjang.dart';
import 'package:pas_faiz/ikea/profil.dart';
import 'package:pas_faiz/ikea/providers/cart_provider.dart';
import 'package:pas_faiz/ikea/providers/detail_product_provider.dart';
import 'package:pas_faiz/ikea/wishlist.dart';
import 'package:pas_faiz/ikea/splash.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ProductProvider()),
    ChangeNotifierProvider(create: (context) => CartProvider())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}




    //   MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context) => DetailProductProvider())
    //   ],
    //   child: 
    // );