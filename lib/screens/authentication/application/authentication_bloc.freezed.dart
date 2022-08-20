// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthenticationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() verifyPhoneNumber,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verifyPhoneNumber,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_VerifyPhoneNumberCopyWith<$Res> {
  factory _$$_VerifyPhoneNumberCopyWith(_$_VerifyPhoneNumber value,
          $Res Function(_$_VerifyPhoneNumber) then) =
      __$$_VerifyPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyPhoneNumberCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_VerifyPhoneNumberCopyWith<$Res> {
  __$$_VerifyPhoneNumberCopyWithImpl(
      _$_VerifyPhoneNumber _value, $Res Function(_$_VerifyPhoneNumber) _then)
      : super(_value, (v) => _then(v as _$_VerifyPhoneNumber));

  @override
  _$_VerifyPhoneNumber get _value => super._value as _$_VerifyPhoneNumber;
}

/// @nodoc

class _$_VerifyPhoneNumber implements _VerifyPhoneNumber {
  const _$_VerifyPhoneNumber();

  @override
  String toString() {
    return 'AuthenticationEvent.verifyPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() verifyPhoneNumber,
  }) {
    return verifyPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber implements AuthenticationEvent {
  const factory _VerifyPhoneNumber() = _$_VerifyPhoneNumber;
}

/// @nodoc
mixin _$AuthenticationState {
  TextEditingController get mobileNumberController =>
      throw _privateConstructorUsedError;
  String get verificationIDReceived => throw _privateConstructorUsedError;
  bool get otpScreenVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController mobileNumberController,
      String verificationIDReceived,
      bool otpScreenVisible});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? mobileNumberController = freezed,
    Object? verificationIDReceived = freezed,
    Object? otpScreenVisible = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumberController: mobileNumberController == freezed
          ? _value.mobileNumberController
          : mobileNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      verificationIDReceived: verificationIDReceived == freezed
          ? _value.verificationIDReceived
          : verificationIDReceived // ignore: cast_nullable_to_non_nullable
              as String,
      otpScreenVisible: otpScreenVisible == freezed
          ? _value.otpScreenVisible
          : otpScreenVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController mobileNumberController,
      String verificationIDReceived,
      bool otpScreenVisible});
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationState));

  @override
  _$_AuthenticationState get _value => super._value as _$_AuthenticationState;

  @override
  $Res call({
    Object? mobileNumberController = freezed,
    Object? verificationIDReceived = freezed,
    Object? otpScreenVisible = freezed,
  }) {
    return _then(_$_AuthenticationState(
      mobileNumberController: mobileNumberController == freezed
          ? _value.mobileNumberController
          : mobileNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      verificationIDReceived: verificationIDReceived == freezed
          ? _value.verificationIDReceived
          : verificationIDReceived // ignore: cast_nullable_to_non_nullable
              as String,
      otpScreenVisible: otpScreenVisible == freezed
          ? _value.otpScreenVisible
          : otpScreenVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {required this.mobileNumberController,
      required this.verificationIDReceived,
      required this.otpScreenVisible});

  @override
  final TextEditingController mobileNumberController;
  @override
  final String verificationIDReceived;
  @override
  final bool otpScreenVisible;

  @override
  String toString() {
    return 'AuthenticationState(mobileNumberController: $mobileNumberController, verificationIDReceived: $verificationIDReceived, otpScreenVisible: $otpScreenVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationState &&
            const DeepCollectionEquality()
                .equals(other.mobileNumberController, mobileNumberController) &&
            const DeepCollectionEquality()
                .equals(other.verificationIDReceived, verificationIDReceived) &&
            const DeepCollectionEquality()
                .equals(other.otpScreenVisible, otpScreenVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mobileNumberController),
      const DeepCollectionEquality().hash(verificationIDReceived),
      const DeepCollectionEquality().hash(otpScreenVisible));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      __$$_AuthenticationStateCopyWithImpl<_$_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {required final TextEditingController mobileNumberController,
      required final String verificationIDReceived,
      required final bool otpScreenVisible}) = _$_AuthenticationState;

  @override
  TextEditingController get mobileNumberController;
  @override
  String get verificationIDReceived;
  @override
  bool get otpScreenVisible;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
