import 'package:flutter/material.dart';
import 'package:zartech/core/colors.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.press}) : super(key: key);
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Center(
            child: Text(
              "Next",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [lightGreen, darkGreen]),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
