/*
Path: lib\widgets\signUpButton\sign_up_button.dart
Content: Custom button used in Sign up page
Date: 19-08-2022
*/
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.color1,
    required this.color2,
    required this.press,
  }) : super(key: key);
  final String icon;
  final String title;
  final Color color1;
  final Color color2;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Image.asset(
                  icon,
                  height: 30,
                  width: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          width: double.infinity,
          height: 58,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2]),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
