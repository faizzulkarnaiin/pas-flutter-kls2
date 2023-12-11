// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_print, unused_element, unused_local_variable, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:pas_faiz/ikea/constrains/colors.dart';
import 'package:pas_faiz/ikea/providers/cart_provider.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// class Keranjang extends StatefulWidget {
//   @override
//   State<Keranjang> createState() => _KeranjangState();
// }

// class _KeranjangState extends State<Keranjang> {
//   int jumlahBarang1 = 0;
//   int jumlahBarang2 = 0;
//   int barang1Price = 1350000;
//   int barang2Price = 1499000;
//   bool love = false;
//   NumberFormat currencyFormat =
//       NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
//   int calculateTotal() {
//     return jumlahBarang1 * barang1Price + jumlahBarang2 * barang2Price;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cartProvider = Provider.of<CartProvider>(context);

//     return Scaffold(
//       backgroundColor: Colors.white,
//       bottomNavigationBar: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 110,
//         decoration: BoxDecoration(border: Border.all(color: secondLine)),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Total",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w400, color: secondText),
//                   ),
//                   SizedBox(
//                     height: 6,
//                   ),
//                   Text(
//                     currencyFormat.format(calculateTotal()),
//                     style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 20,
//                         color: primaryText),
//                   )
//                 ],
//               ),
//               Container(
//                 width: 181,
//                 height: 56,
//                 color: primary,
//                 child: Center(
//                   child: Text(
//                     "Beli",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 143,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//                 border: Border(bottom: BorderSide(color: secondLine))),
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 74,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               icon: Icon(Iconsax.arrow_left)),
//                           SizedBox(
//                             width: 16,
//                           ),
//                           Text(
//                             "Keranjang",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 18,
//                                 color: primaryText),
//                           )
//                         ],
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             love = !love;
//                           });
//                         },
//                         icon: love
//                             ? Icon(
//                                 Iconsax.heart5,
//                                 color: Colors.red,
//                                 size: 26,
//                               )
//                             : Icon(
//                                 Iconsax.heart,
//                                 size: 26,
//                               ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 26,
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 24,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text.rich(TextSpan(
//                         text: '${cartProvider.cartItems.length}',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                         ),
//                         children: <InlineSpan>[
//                           WidgetSpan(
//                               child: SizedBox(
//                             width: 4,
//                           )),
//                           TextSpan(
//                               text: 'barang',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 14,
//                                   color: secondText))
//                         ])),
//                     Text(
//                       "Hapus semua",
//                       style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                           color: primary),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 24,
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: cartProvider.cartItems.length,
//                     itemBuilder: (context, index) {
//                       CartItem cartItem = cartProvider.cartItems[index];
//                       return _buildCartItem(cartItem);
//                     },
//                   ),
//                 )
               
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildCartItem(CartItem cartItem) {
//     return Container(
//       child: Column(children: [
//         Text(cartItem.name),
//         Text(cartItem.price),
//         Text("Quantity: ${cartItem.quantity}"),
//       ]),
//     );
//   }
// }


class Keranjang extends StatefulWidget {
  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  
  int jumlahBarang1 = 0;
  int jumlahBarang2 = 0;
  int barang1Price = 1350000;
  int barang2Price = 1499000;
  bool love = false;
  NumberFormat currencyFormat =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
  int calculateTotal() {
    return jumlahBarang1 * barang1Price + jumlahBarang2 * barang2Price;
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 110,
        decoration: BoxDecoration(border: Border.all(color: secondLine)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: secondText),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    currencyFormat.format(calculateTotal()),
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: primaryText),
                  )
                ],
              ),
              Container(
                width: 181,
                height: 56,
                color: primary,
                child: Center(
                  child: Text(
                    "Beli",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          StickyHeader(
              header: Container(
                height: 143,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: secondLine))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 74,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: () {
                                Navigator.pop(context);
                              }, icon:Icon(Iconsax.arrow_left) ),
                              
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Keranjang",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: primaryText),
                              )
                            ],
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
                                : Icon(
                                    Iconsax.heart,
                                    size: 26,
                                  ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      )
                    ],
                  ),
                ),
              ),
              content: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: '2',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  child: SizedBox(
                                width: 4,
                              )),
                              TextSpan(
                                  text: 'barang',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: secondText))
                            ])),
                        Text(
                          "Hapus semua",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: primary),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    _keranjangDesc(context),
                    _keranjangDesc2(context),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Container _keranjangDesc(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 24),
      height: 160,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 99,
            height: 99,
            child: Image.asset(
              "assets/Rectangle 16.png",
              width: 99,
              height: 99,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ALEX",
                style: TextStyle(
                    color: primaryText,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Unit laci, abu-abu toska, 36x70 cm",
                style:
                    TextStyle(color: secondText, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 12,
              ),
              Text("Rp1.350.000",
                  style: TextStyle(
                      color: primaryText,
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    width: 72,
                    height: 38,
                    decoration:
                        BoxDecoration(border: Border.all(color: secondLine)),
                    child: Center(
                      child: Icon(
                        Iconsax.trash,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 183,
                    height: 38,
                    decoration:
                        BoxDecoration(border: Border.all(color: secondLine)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (jumlahBarang1 > 0) {
                                  jumlahBarang1--;
                                }
                              });
                            },
                            child: Icon(Iconsax.minus)),
                        Text(jumlahBarang1.toString()),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                jumlahBarang1++;
                              });
                            },
                            child: Icon(Icons.add))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container _keranjangDesc2(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 24),
      height: 160,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 99,
            height: 99,
            child: Image.asset(
              "assets/meja.png",
              width: 99,
              height: 99,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MACKAPÄR",
                style: TextStyle(
                    color: primaryText,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Kabinet/tempat sepatu, putih, \n80x35x102 cm",
                style:
                    TextStyle(color: secondText, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 12,
              ),
              Text("Rp1.499.000",
                  style: TextStyle(
                      color: primaryText,
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    width: 72,
                    height: 38,
                    decoration:
                        BoxDecoration(border: Border.all(color: secondLine)),
                    child: Center(
                      child: Icon(
                        Iconsax.trash,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 183,
                    height: 38,
                    decoration:
                        BoxDecoration(border: Border.all(color: secondLine)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (jumlahBarang2 > 0) {
                                  jumlahBarang2--;
                                }
                              });
                            },
                            child: Icon(Iconsax.minus)),
                        Text(jumlahBarang2.toString()),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                jumlahBarang2++;
                              });
                            },
                            child: Icon(Icons.add))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
   }
 }
