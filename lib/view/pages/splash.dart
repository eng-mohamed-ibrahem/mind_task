import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mind_task/config/generate_router.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.of(context).pushReplacementNamed(GenerateRouter.mainNavigation);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 10),
            Text('core.loading'.tr()),
          ],
        ),
      ),
    );
  }
}
