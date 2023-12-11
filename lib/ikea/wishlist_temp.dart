// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pas_faiz/ikea/constrains/colors.dart';

class WishlistModel {
  final String judul;
  final String image;

  final String desk;
  final String harga;

  WishlistModel( this.image,this.judul, this.desk, this.harga);
}

class WishlistCont extends StatelessWidget {
  final String image;
  final String judul;
  final String desk;
  final String harga;

  const WishlistCont(
      {super.key,
      required this.image,
      required this.judul,
      required this.desk,
      required this.harga});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        margin: EdgeInsets.only(bottom: 24, top: 16 ),
        height: 146,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 99, height: 99, child: Image.asset(image)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: TextStyle(
                      color: primaryText,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  desk,
                  style:
                      TextStyle(color: secondText, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(harga,
                    style: TextStyle(
                        color: primaryText,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 271,
                  height: 38,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Tambah ke Keranjang"),
                    style: OutlinedButton.styleFrom(
                        primary: primary, side: BorderSide(color: primary)),
                  ),
                )
              ],
            ),
            Icon(
              Icons.more_vert_outlined,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
