import 'package:flutter/material.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [HexColor('#FBD203'), HexColor('#CC9A25')],
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
