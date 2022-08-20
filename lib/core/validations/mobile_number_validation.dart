import 'package:flutter/material.dart';

phoneNumberValidator(String value, BuildContext context) {
  if (RegExp(r"^(?:[+0]9)?[0-9]{10}$").hasMatch(value))
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('snack'),
      duration: const Duration(seconds: 1),
      action: SnackBarAction(
        label: 'ACTION',
        onPressed: () {},
      ),
    ));
  else
    return null;
}
