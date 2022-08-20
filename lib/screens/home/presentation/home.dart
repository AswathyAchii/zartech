import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zartech/core/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: normalBlack,
              size: 25,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 15,
              ),
              child: Icon(
                Icons.shopping_cart,
                color: normalBlack,
                size: 25,
              ),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: normalBlack,
            labelColor: Colors.red,
            indicatorColor: Colors.red,
            isScrollable: true,
            tabs: [
              Tab(text: "Hi"),
              Tab(text: "Hi"),
              Tab(text: "Hi"),
              Tab(text: "Hi"),
              Tab(text: "Hi"),
              Tab(text: "Hi"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(color: Colors.blue),
            Container(
              color: Colors.red,
            ),
            Container(color: Colors.blue),
            Container(
              color: Colors.red,
            ),
            Container(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
