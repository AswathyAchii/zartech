import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.initial()) {
    on<_VerifyPhoneNumber>((event, emit) {
      FirebaseAuth auth = FirebaseAuth.instance;
      auth.verifyPhoneNumber(
        phoneNumber: state.mobileNumberController.text,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {
            print("logged in sucess");
          });
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message.toString());
        },
        codeSent: (verificationId, forceResendingToken) {
          emit(state.copyWith(
            verificationIDReceived: verificationId,
            otpScreenVisible: true,
          ));
          print(verificationId.toString());
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    });
  }
}
