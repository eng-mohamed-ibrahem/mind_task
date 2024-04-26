import 'package:flutter/material.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';

class AuthFieldInput extends StatefulWidget {
  const AuthFieldInput({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.isItPassword = false,
    this.validator,
  });
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool isItPassword;

  @override
  State<AuthFieldInput> createState() => _AuthFieldInputState();
}

class _AuthFieldInputState extends State<AuthFieldInput> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isPasswordVisible,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: widget.isItPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                icon: isPasswordVisible
                    ? const Icon(Icons.visibility_off_rounded)
                    : const Icon(Icons.visibility_rounded),
              )
            : null,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: HexColor('#757575'),
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        icon: widget.prefixIcon,
      ),
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
