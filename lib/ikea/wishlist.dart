// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use, sort_child_properties_last, unused_field, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pas_faiz/ikea/constrains/colors.dart';
import 'package:pas_faiz/ikea/keranjang.dart';
import 'package:pas_faiz/ikea/wishlist_temp.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:iconsax/iconsax.dart';

class Wishlist extends StatefulWidget {
  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List<WishlistModel> wishlistList = [
    WishlistModel("assets/Rectangle 16.png", "ALEX",
        "Unit laci, abu-abu toska, 36x70 cm", "Rp1.350.000"),
    WishlistModel("assets/Rectangle 17.png", "MILLBERGET",
        "Kursi putar, murum hitam", "Rp1.799.000"),
    WishlistModel(
        "assets/Rectangle 16-1.png",
        "SONGESAND",
        "Rngk tmpt tdr dg 2 ktk penyimpanan, \ncokelat, 160x200 cm",
        "Rp3.499.000"),
    WishlistModel("assets/Rectangle 16-2.png", "HEKTAR",
        "Lampu lantai, abu-abu tua", "Rp1.299.000"),
  ];

  List<WishlistModel> display_wishlist = [];
  @override
  void initState() {
    // Panggil updateListVideo di dalam initState untuk memastikan inisialisasi awal
    updateListVideo("");
    super.initState();
  }

  void updateListVideo(String value) {
    setState(() {
      display_wishlist = wishlistList
          .where((element) =>
              element.judul.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 74),
            height: 162,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Wishlist", style: TextStyle(
                        color: primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Keranjang(),
                            ),
                          );
                        },
                        icon: Icon(Iconsax.shopping_cart, size: 26,),
                      )
                    ],
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 48,
                    child: TextField(
                      onChanged: (value) => updateListVideo(value),
                      decoration: InputDecoration(
                        hintText: "Cari barang diwishlist",
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xffE7E7E7),
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: '${display_wishlist.length}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          children: <InlineSpan>[
                            WidgetSpan(
                              child: SizedBox(width: 4),
                            ),
                            TextSpan(
                              text: 'barang',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: secondText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.list,
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: display_wishlist.isEmpty
                ? Center(
                    child: Container(
                      child: Text("Barang tidak ditemukan"),
                    ),
                  )
                : ListView.builder(
                    itemCount: display_wishlist.length,
                    itemBuilder: (context, index) => WishlistCont(
                      image: display_wishlist[index].image,
                      judul: display_wishlist[index].judul,
                      desk: display_wishlist[index].desk,
                      harga: display_wishlist[index].harga,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}


  // Container WishlistModel(String img, String judul, String desk, String harga) {
  //   return
  // }

