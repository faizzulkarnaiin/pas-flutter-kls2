// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_element, unused_field, annotate_overrides, unused_local_variable, unused_import, camel_case_types
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:pas_faiz/ikea/keranjang.dart';
import 'package:sticky_headers/sticky_headers.dart';

class InspirationPage extends StatefulWidget {
  @override
  State<InspirationPage> createState() => _InspirationPageState();
}

class _InspirationPageState extends State<InspirationPage> {
  int selectedIndex = 0;
  int selectedIndex2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            StickyHeader(
                header: Container(
                 
                  width: MediaQuery.of(context).size.width,
                  height: 187,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 0.5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 74,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Temukan Inspirasi",
                                style: TextStyle(
                                    color: Color(0xff1B1B1B),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                            ),
                            Container(
                              child: Row(children: [
                                Icon(Icons.search, size: 26),
                                SizedBox(width: 24),
                               IconButton(onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => Keranjang()));
                               }, icon:  Icon(Iconsax.shopping_cart, size: 26),)
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Row(
                          children: [
                            cutomText("inspirasi", 0),
                            SizedBox(
                              width: 26,
                            ),
                            cutomText("Koleksi", 2),
                            SizedBox(
                              width: 26,
                            ),
                            cutomText("Edukasi", 3),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                content: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ContDesc("semua", 0),
                            SizedBox(
                              width: 16,
                            ),
                            ContDesc("Ruang kerja", 2),
                            SizedBox(
                              width: 16,
                            ),
                            ContDesc("Dapur", 3),
                            SizedBox(
                              width: 16,
                            ),
                            ContDesc("Ruang keluarga", 4),
                            SizedBox(
                              width: 16,
                            ),
                            ContDesc("semua", 5),
                            SizedBox(
                              width: 16,
                            ),
                            ContDesc("semua", 6),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 183,
                            child: Column(
                              children: [
                                Image.asset("assets/Rectangle 33.png"),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Hunian compact yang nyaman",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xff1B1B1B)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 183,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/Rectangle 34.png",
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Lakukan 5 hal ini agar sepatumu bebas ...",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xff1B1B1B)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/Rectangle 40.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                          "Hadirkan nuasa elegant dan fancy kedalam \nkamar tidur anda",  style: TextStyle(
                                color: Color(0xff1B1B1B),
                                fontWeight: FontWeight.w600,
                                fontSize: 16),),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 183,
                            child: Column(
                              children: [
                                Image.asset("assets/Rectangle 41.png"),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Rumah lebih sehat dengan set tempat ...",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xff1B1B1B)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 183,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/Rectangle 42.png",
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Membuat kamar anak rapi jadi lebih mudah",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xff1B1B1B)),
                                ),
                                SizedBox(height: 26,)
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
                )
          ],
        ),
      ),
    );
  }

  GestureDetector ContDesc(String text, int id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex2 = id;
        });
      },
      child: Container(
        width: 96,
        height: 48,
        decoration: BoxDecoration(
 color: selectedIndex2 == id
            ? Color(0xff0058AB)
            : Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              width: 0.8,
              color: Color(0xffE7E7E7)
            )
        ),
       
        child: Center(
            child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: selectedIndex2 == id ? Colors.white : Colors.black),
        )),
      ),
    );
  }

  Widget cutomText(String text, int id) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = id;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: selectedIndex == id
                          ? Color(0xff0058AB)
                          : Colors.white))),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 26),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  color:
                      selectedIndex == id ? Color(0xff1B1B1B) : Color(0xff6C6C6C),
                  fontWeight:
                      selectedIndex == id ? FontWeight.w500 : FontWeight.w400),
            ),
          ),
        ));
  }
}
