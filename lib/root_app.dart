import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mind_task/config/generate_router.dart';
import 'package:mind_task/core/utils/dependency_locator/dependency_injection.dart';
import 'package:mind_task/viewmodel/navigation_bar_viewmodel/navigation_bar_viewmodel.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBarViewmodel(homeRepo: kHomeRepo),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: GenerateRouter.splash,
        onGenerateRoute: GenerateRouter.routeGenerator,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
