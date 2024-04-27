import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FailedWidget extends StatelessWidget {
  const FailedWidget({super.key, required this.message, required this.onRetry});
  final String message;
  final void Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          TextButton(
            onPressed: onRetry,
            child: Text('core.retry'.tr()),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
