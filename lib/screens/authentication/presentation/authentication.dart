import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:zartech/core/colors.dart';
import 'package:zartech/core/constants.dart';
import 'package:zartech/router/router.dart';
import 'package:zartech/screens/authentication/widgets/sign_up_button.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            firbaseLogo(imageUrl: "assets/images/firebase_logo.png"),
            SignUpButton(
              color1: lightBlue,
              color2: darkBlue,
              icon: 'assets/images/google-logo-png.png',
              title: 'Google',
              press: () {
                log("button 1 is working");
              },
            ),
            kHeight10,
            SignUpButton(
              color1: lightGreen,
              color2: darkGreen,
              icon: 'assets/images/mobile_icon.png',
              title: 'Mobile',
              press: () {
                context.router.push(MobileVerificationRoute());
                log("button 2 is working");
              },
            ),
          ],
        ),
      ),
    );
  }

  Padding firbaseLogo({required String imageUrl}) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 80.0, right: 80, top: 150, bottom: 150),
      child: Center(
        child: Image.asset(
          imageUrl,
          height: 200,
          width: 180,
        ),
      ),
    );
  }
}
