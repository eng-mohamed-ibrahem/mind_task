import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mind_task/config/generate_router.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: GenerateRouter.splash,
      onGenerateRoute: GenerateRouter.routeGenerator,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
