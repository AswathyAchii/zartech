// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:zartech/core/colors.dart';
import 'package:zartech/core/constants.dart';
import 'package:zartech/router/router.dart';
import 'package:zartech/screens/authentication/application/authentication_bloc.dart';
import 'package:zartech/screens/authentication/presentation/otp_verification.dart';
import 'package:zartech/screens/authentication/widgets/next_button.dart';
import 'package:zartech/screens/home/application/home_bloc.dart';

class MobileVerificationPage extends StatelessWidget {
  MobileVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        Widget? _showWidget = Container();
        state.otpScreenVisible == true
            ? _showWidget = OTPVerificationPage()
            : _showWidget = GetMobileNumber();
        return _showWidget;
      },
    );
  }
}

class GetMobileNumber extends StatelessWidget {
  GetMobileNumber({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: backArrow(context),
        elevation: 0,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                screenTitle(),
                kHeight160,
                Text(
                  "What's your phone number?",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                kHeight30,
                mobileTextField(context),
                kHeight20,
                NextButton(
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      context
                          .read<AuthenticationBloc>()
                          .add(AuthenticationEvent.verifyPhoneNumber());
                      context.router.push(HomeRoute());
                      log("its working");
                      context
                          .read<HomeBloc>()
                          .add(HomeEvent.getRestaurantData());
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector backArrow(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: normalBlack,
      ),
    );
  }

  Padding screenTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Text(
        "Create a Personal\naccount",
        style: GoogleFonts.redHatDisplay(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Padding mobileTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, bottom: 10),
      child: SizedBox(
        child: Center(
          child: TextFormField(
            controller:
                context.read<AuthenticationBloc>().state.mobileNumberController,
            onChanged: ((value) {
              if (_formKey.currentState!.validate()) {}
            }),
            validator: (val) {
              if (!RegExp(r"^\+[1-9]{1}[0-9]{3,14}$").hasMatch(val!))
                return 'Enter Valid Phone Number with country code';
              else
                return null;
            },
            decoration: InputDecoration(
              hintText: "Enter you'r mobile number",
              hintStyle: GoogleFonts.inter(
                fontSize: 11,
                color: normalBlack,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: lightGreen),
              ),
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
