import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zartech/core/colors.dart';
import 'package:zartech/widgets/cart_items.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Order Summary",
          style: TextStyle(
            color: normalBlack,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: normalBlack,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        elevation: 3,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              child: Column(children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    color: cartGreen,
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.white,
                    child: CartItems(),
                  ),
                )
              ]),
              constraints: BoxConstraints(
                maxHeight: double.infinity,
              ),
              margin: EdgeInsets.only(
                left: 12,
                right: 12,
                top: 20,
                bottom: 50,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: greyColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  "Place Order",
                  style: GoogleFonts.redHatDisplay(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
              margin: EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 30),
              decoration: BoxDecoration(
                color: cartGreen,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
