// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_element, unused_field, annotate_overrides, unused_local_variable, prefer_final_fields, unused_import, duplicate_ignore

// ignore: unused_import
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:pas_faiz/ikea/detail_product.dart';
import 'package:pas_faiz/ikea/inspiration.dart';
import 'package:pas_faiz/ikea/keranjang.dart';
import 'package:pas_faiz/ikea/notificaton.dart';
import 'package:pas_faiz/ikea/profil.dart';
import 'package:pas_faiz/ikea/providers/detail_product_provider.dart';
import 'package:pas_faiz/ikea/wishlist.dart';
import 'package:provider/provider.dart';
import 'package:sticky_headers/sticky_headers.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool search = false;

  late ScrollController _controller;
  _scrollListener() {
    if (_controller.offset > 50) {
      setState(() {
        search = true;
      });
    } else {
      setState(() {
        search = false;
      });
    }
  }

  int _currentIndex = 0;
  PageController _pageController = PageController();

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    InspirationPage(),
    Wishlist(),
    Profile()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.home,
                  size: 24,
                ),
                label: 'Beranda'),
            BottomNavigationBarItem(
                icon: Icon(Icons.coffee_outlined, size: 24),
                label: 'Inspirasi'),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart, size: 24),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_circle, size: 24),
              label: 'Profil',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            _buildHomePage(),
            InspirationPage(),
            Wishlist(),
            Profile(),
          ],
        ));
  }

  Widget _buildHomePage() {
    return ListView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        StickyHeader(
          header: Container(
            height: 122,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 0.5))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 33,
                      width: 84,
                      child: Image.asset("assets/image 1.png")),
                  Container(
                    child: Row(
                      children: [
                        if (search)
                          Icon(
                            Icons.search,
                            size: 26,
                          ),
                        SizedBox(
                          width: 24,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => notification()));
                          },
                          icon: Icon(
                            Iconsax.notification,
                            size: 26,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Keranjang()));
                            },
                            icon: Icon(
                              Iconsax.shopping_cart,
                              size: 26,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          content: Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Cari barang impianmu",
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            width: 2.0, // Border width
                            style: BorderStyle.solid, // Border style
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/page__en_us_1668678827252_0_1 1.png",
                    fit: BoxFit
                        .contain, // Menggunakan BoxFit.contain untuk menjaga gambar sesuai dengan lebar
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _Banner("assets/Rectangle 5.png", "Kamar tidur"),
                        _Banner("assets/Rectangle 6.png", "Ruang Kerja"),
                        _Banner("assets/Rectangle 7.png", "Dapur"),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => DetailProduct(productId: "",)));
                            },
                            child: _Banner(
                                "assets/Rectangle 8.png", "Bayi & Anak")),
                        _Banner("assets/Rectangle 9.png", "Tekstil"),
                        _Banner("assets/Rectangle 10.png", "Penyimpanan"),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Produk Populer",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff1B1B1B),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Lihat semua",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff0058AB)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => Keranjang()));
                      //   },
                      //   child:
                      //  _SlideBanner(
                      //    product: Provider.of<DetailProductProvider>(context).getProductById('productId1'),
                      //    onTap:  () => _goToProductDetail(context, 'productId1'),
                      //     ),
                      // ),
                      // SizedBox(
                      //     width: 24), // Memberikan jarak horizontal antar item
                      // GestureDetector(
                      //   onTap: () {
                      //     context.read<DetailProductProvider>().addToDetail(Product(name: "KROKFJORDEN", image: "assets/Rectangle 15.png", price:  "Rp99.900", deskripsi: "Pengait dengan \nplastik isap ..." ));
                      //    },
                      //   child:
                      _SlideBanner(
                        desk: "Meja, hijau muda/putih, \n120x60 cm",
                        harga: "Rp1.909.000",
                        name: "ALEX/LAGKAPTEN",
                        image: "assets/Rectangle 16.png",
                      ),

                      SizedBox(width: 24),
                      _SlideBanner(
                        image: "assets/Rectangle 17.png",
                        name: "FARDAL/PAX",
                        desk: "Kombinasi lemari pakaian, putih/hig...",
                        harga: "Rp99.900",
                      ),
                      SizedBox(width: 24),
                      _SlideBanner(
                        image: "assets/Rectangle 15.png",
                        name: "KROKFJORDEN",
                        desk: "Pengait dengan \nplastik isap ...",
                        harga: "Rp99.900",
                      ),
                      SizedBox(width: 24),
                      _SlideBanner(
                        image: "assets/Rectangle 15.png",
                        name: "KROKFJORDEN",
                        desk: "Pengait dengan \nplastik isap ...",
                        harga: "Rp99.900",
                      ),
                      SizedBox(width: 24),
                      _SlideBanner(
                        image: "assets/Rectangle 15.png",
                        name: "KROKFJORDEN",
                        desk: "Pengait dengan \nplastik isap ...",
                        harga: "Rp99.900",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Telusuri Koleksi Kami",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff1B1B1B),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Lihat semua",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff0058AB)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 183,
                      height: 232,
                      margin: EdgeInsets.only(top: 16),
                      color: Color(0xff4F707F),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 183,
                            height: 119,
                            // margin: EdgeInsets.only(bottom: 12),
                            child: Image.asset("assets/Rectangle 19.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 12, 13, 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BLÅVINGAD",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFFFFFF)),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Koleksi yang \nterinspirasi dari lautan \nuntuk menciptakan ...",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(width: 16,),
                    Container(
                      width: 183,
                      height: 232,
                      margin: EdgeInsets.only(top: 16),
                      color: Color(0xff5E4238),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 183,
                            height: 119,
                            // margin: EdgeInsets.only(bottom: 12),
                            child: Image.asset("assets/Rectangle 21.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 12, 13, 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "VINTERFINT",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFFFFFF)),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Koleksi VINTERFINT \nhadir dengan warna \ndan pola indah ...",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 52,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Penawaran Terkini",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff1B1B1B),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Lihat semua",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff0058AB)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
Container(
  width: 183,
  height: 150,
  child: Image.asset("assets/Rectangle 20.png")
),
Container(
  width: 183,
  height: 150,
  child: Image.asset("assets/Rectangle 21.png")
),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SlideBanner extends StatelessWidget {
  final String image;
  final String name;
  final String harga;
  final String desk;

  const _SlideBanner({
    super.key,
    required this.image,
    required this.name,
    required this.harga,
    required this.desk,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 146,
      height: 254,
      child: GestureDetector(
        onTap: () {
          Provider.of<ProductProvider>(context, listen: false)
              .setSelectedProduct(name, image, harga, desk);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailProduct()),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 146,
              height: 146,
              margin: EdgeInsets.only(bottom: 12),
              child: Image.asset(image),
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff1B1B1B),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              desk,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff6C6C6C),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              harga,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff1B1B1B),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class _SlideBanner extends StatelessWidget {
//   final Product product;
//   final VoidCallback onTap;

//   const _SlideBanner({
//     Key? key,
//     required this.product,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 16),
//       width: 146,
//       height: 254,
//       child: GestureDetector(
//         onTap: onTap,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: 146,
//               height: 146,
//               margin: EdgeInsets.only(bottom: 12),
//               child: Image.asset(product.imageUrl),
//             ),
//             Text(
//               product.name,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//                 color: Color(0xff1B1B1B),
//               ),
//             ),
//             SizedBox(
//               height: 6,
//             ),
//             Text(
//               product.description,
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//                 color: Color(0xff6C6C6C),
//               ),
//             ),
//             SizedBox(
//               height: 12,
//             ),
//             Text(
//               product.price,
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 16,
//                 color: Color(0xff1B1B1B),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

Container _Banner(String image, String text) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 117,
            height: 80,
            child: Image.asset(image, fit: BoxFit.contain)),
        SizedBox(
          height: 6,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}

// void _goToProductDetail(BuildContext context, String productId) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => DetailProduct(productId: productId),
//     ),
//   );
// }
