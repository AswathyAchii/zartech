import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zartech/core/colors.dart';

class MobileNumberTextField extends StatelessWidget {
  MobileNumberTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 30,
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: TextFormField(
              validator: (val) {
                if (RegExp(r"^(?:[+0]9)?[0-9]{10}$").hasMatch(val!))
                  return 'Enter Valid Phone Number';
                else
                  return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter you'r mobile number",
                hintStyle: GoogleFonts.inter(
                  fontSize: 11,
                  color: normalBlack,
                ),
              ),
            ),
          ),
        ),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
