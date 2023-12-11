// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:pas_faiz/ikea/constrains/colors.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 74,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menu Akun",
                      style: TextStyle(
                        color: primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.settings,
                      size: 26,
                    )
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 84,
                        height: 84,
                        child: Image.asset(
                          "assets/Rectangle 44.png",
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rizqi Fatur",
                          style: TextStyle(
                            color: primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "160002359102020",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: secondText),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                _list(Iconsax.profile_circle, "Profile Saya"),
                _list(Iconsax.box, "Pesanan"),
                _list(Iconsax.star, "Ulasan"),
                _list(Iconsax.gift, "Reward Saya"),
                _list(Iconsax.message_question, "Bantuan"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _list(IconData icon, String text) {
    return Container(
      child: Column(
        children: [
          Divider(
            color: secondLine,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 28),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 26,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
