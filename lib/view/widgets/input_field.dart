import 'package:flutter/material.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(
          color: HexColor('#A7A7A7'),
        ),
        labelStyle: Theme.of(context).textTheme.bodySmall,
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(20),
        //   borderSide: BorderSide(
        //     color: HexColor('#757575'),
        //     width: 1,
        //     strokeAlign: BorderSide.strokeAlignOutside,
        //   ),
        // ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        prefixIcon: prefixIcon,
      ),
      style: TextStyle(
        color: HexColor('#A7A7A7'),
      ),
    );
  }
}
