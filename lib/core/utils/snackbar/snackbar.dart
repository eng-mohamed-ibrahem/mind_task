import 'package:flutter/material.dart';

showSnackBar(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    ),
  );
}
