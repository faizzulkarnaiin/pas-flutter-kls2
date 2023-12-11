// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_element, unused_field, annotate_overrides, unused_local_variable, unused_import, no_logic_in_create_state, prefer_const_constructors_in_immutables, deprecated_member_use
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:pas_faiz/ikea/keranjang.dart';
import 'package:pas_faiz/ikea/providers/cart_provider.dart';
import 'package:pas_faiz/ikea/providers/detail_product_provider.dart';
import 'package:provider/provider.dart';
import 'package:sticky_headers/sticky_headers.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});
  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int jumlah = 0;
  bool love = false;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          StickyHeader(
            header: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              height: 122,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Colors.black12, width: 1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back, size: 26),
                        ),
                        SizedBox(width: 16),
                        Text(
                          // "ALEX/LAGKAPTEN",
                          productProvider.selectedProductName,
                          style: TextStyle(
                            color: Color(0xff1B1B1B),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.search, size: 26),
                        SizedBox(width: 24),
                        Icon(Icons.share_outlined, size: 26),
                        SizedBox(width: 24),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Keranjang()));
                          },
                          icon: Icon(Iconsax.shopping_cart, size: 26),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            content: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 382,
                      color: Colors.grey.shade400,
                      child: Image.asset(
                        // "assets/Rectangle 23.png",
                        productProvider.selectedProductName == "ALEX/LAGKAPTEN"
                            ? "assets/Rectangle 23.png"
                            : productProvider.selectedProductImage,
                        fit: productProvider.selectedProductName ==
                                "ALEX/LAGKAPTEN"
                            ? BoxFit.cover
                            : BoxFit.contain,
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 64,
                            height: 64,
                            child: Image.asset("assets/Rectangle 24.png")),
                        Container(
                            width: 64,
                            height: 64,
                            child: Image.asset("assets/Rectangle 25.png")),
                        Container(
                            width: 64,
                            height: 64,
                            child: Image.asset("assets/Rectangle 26.png")),
                        Container(
                            width: 64,
                            height: 64,
                            child: Image.asset("assets/Rectangle 27.png")),
                        Container(
                            width: 64,
                            height: 64,
                            child: Image.asset("assets/Rectangle 28.png")),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productProvider.selectedProductName,
                        style: TextStyle(
                          color: Color(0xff1B1B1B),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              love = !love;
                            });
                          },
                          icon: love
                              ? Icon(
                                  Iconsax.heart5,
                                  color: Colors.red,
                                  size: 26,
                                )
                              : Icon(Iconsax.heart))
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    productProvider.selectedProductDesk,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6C6C6C)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    productProvider.selectedProductPrice,
                    style: TextStyle(
                      color: Color(0xff1B1B1B),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Rp1.909.000",
                        style: TextStyle(
                          color: Color(0xff6C6C6C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.",
                    softWrap: true,
                    style: TextStyle(
                        color: Color(0xff1B1B1B),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        wordSpacing: 3),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 127,
                        height: 56,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (jumlah > 1) {
                                      jumlah--;
                                    }
                                  });
                                },
                                child: Icon(Iconsax.minus)),
                            Text(jumlah.toString()),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    jumlah++;
                                  });
                                },
                                child: Icon(Iconsax.add))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff0058AB),
                        ),
                        onPressed: () {
                          CartItem cartItem = CartItem(name: productProvider.selectedProductName, image: productProvider.selectedProductImage, price: productProvider.selectedProductPrice, quantity: jumlah);
                          cartProvider.addToCart(cartItem);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Keranjang()));
                        },
                        child: Container(
                          height: 56,
                          // color: Color(0xff0058AB),
                          child: Center(
                              child: Text(
                            " Tambah ke Keranjang",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}







  // final String productId;

//   DetailProduct({required this.productId});

// @override
//   Widget build(BuildContext context) {
//     var productProvider = Provider.of<DetailProductProvider>(context);
//     var product = productProvider.getProductById(productId);
//     return Scaffold(
//       backgroundColor: Color(0xffFFFFFF),
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: [
//           StickyHeader(
//             header: Container(
//               margin: EdgeInsets.symmetric(horizontal: 24),
//               height: 122,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border(
//                   bottom: BorderSide(color: Colors.black12, width: 1),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     child: Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           icon: Icon(Icons.arrow_back, size: 26),
//                         ),
//                         SizedBox(width: 16),
//                         Text(
//                           product.name,
//                           style: TextStyle(
//                             color: Color(0xff1B1B1B),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     child: Row(
//                       children: [
//                         Icon(Icons.search, size: 26),
//                         SizedBox(width: 24),
//                         Icon(Icons.share_outlined, size: 26),
//                         SizedBox(width: 24),
//                         IconButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Keranjang()));
//                           },
//                           icon: Icon(Iconsax.shopping_cart, size: 26),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             content: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 24,
//                   ),
//                   Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 382,
//                       color: Colors.red,
//                       child: Image.asset(
//                         product.imageUrl,
//                         fit: BoxFit.cover,
//                       )),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                             width: 64,
//                             height: 64,
//                             child: Image.asset("assets/Rectangle 24.png")),
//                         Container(
//                             width: 64,
//                             height: 64,
//                             child: Image.asset("assets/Rectangle 25.png")),
//                         Container(
//                             width: 64,
//                             height: 64,
//                             child: Image.asset("assets/Rectangle 26.png")),
//                         Container(
//                             width: 64,
//                             height: 64,
//                             child: Image.asset("assets/Rectangle 27.png")),
//                         Container(
//                             width: 64,
//                             height: 64,
//                             child: Image.asset("assets/Rectangle 28.png")),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 24,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         product.name,
//                         style: TextStyle(
//                           color: Color(0xff1B1B1B),
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       IconButton(
//                           onPressed: () {
//                             setState(() {
//                               love = !love;
//                             });
//                           },
//                           icon: love
//                               ? Icon(
//                                   Iconsax.heart5,
//                                   color: Colors.red,
//                                   size: 26,
//                                 )
//                               : Icon(Iconsax.heart))
//                     ],
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   Text(
//                     product.description,
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xff6C6C6C)),
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   Text(
//                     product.price,
//                     style: TextStyle(
//                       color: Color(0xff1B1B1B),
//                       fontSize: 24,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       SizedBox(
//                         width: 6,
//                       ),
//                       Text(
//                         "Rp1.909.000",
//                         style: TextStyle(
//                           color: Color(0xff6C6C6C),
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 24,
//                   ),
//                   Text(
//                     "Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.",
//                     softWrap: true,
//                     style: TextStyle(
//                         color: Color(0xff1B1B1B),
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                         wordSpacing: 3),
//                   ),
//                   SizedBox(
//                     height: 24,
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: 127,
//                         height: 56,
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey)),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     if (jumlah > 1) {
//                                       jumlah--;
//                                     }
//                                   });
//                                 },
//                                 child: Icon(Iconsax.minus)),
//                             Text(jumlah.toString()),
//                             GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     jumlah++;
//                                   });
//                                 },
//                                 child: Icon(Iconsax.add))
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         width: 16,
//                       ),
//                       Expanded(
//                           child: Container(
//                         height: 56,
//                         color: Color(0xff0058AB),
//                         child: Center(
//                             child: Text(
//                           " Tambah ke Keranjang",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600),
//                         )),
//                       ))
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class _DetailProductState extends State<DetailProduct> {
//   final String productId;
//   int jumlah = 0;
//   bool love = false;

//   _DetailProductState({required this.productId}) : super() {
//     jumlah = 1;
//     love = false;
//   }