import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';

class Headline extends StatelessWidget {
  const Headline({Key? key, required this.title, required this.onMore})
      : super(key: key);

  final String title;
  final void Function() onMore;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: HexColor('#333333'),
            )),
        TextButton(
          onPressed: onMore,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(HexColor('#EFC40B')),
          ),
          child: Text(
            'core.more'.tr(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
