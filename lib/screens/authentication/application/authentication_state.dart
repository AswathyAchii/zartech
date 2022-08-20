part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required TextEditingController mobileNumberController,
    required String verificationIDReceived,
    required bool otpScreenVisible,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() {
    return AuthenticationState(
      mobileNumberController: TextEditingController(),
      verificationIDReceived: '',
      otpScreenVisible: false,
    );
  }
}
