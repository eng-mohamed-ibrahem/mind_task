import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mind_task/config/generate_router.dart';
import 'package:mind_task/core/utils/local_database/cache_service.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // kUserRepo.isLoggedIn().then((isLoggedIn) {
      //   if (isLoggedIn) {
      //     Navigator.of(context)
      //         .pushReplacementNamed(GenerateRouter.mainNavigation);
      //   } else {
      //     Navigator.of(context).pushReplacementNamed(GenerateRouter.login);
      //   }
      // });
      CacheService.authKey.isNotEmpty
          ? Navigator.of(context)
              .pushReplacementNamed(GenerateRouter.mainNavigation)
          : Navigator.of(context).pushReplacementNamed(GenerateRouter.login);
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
