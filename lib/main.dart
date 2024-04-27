import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mind_task/core/utils/bloc_observer/cubit_observer.dart';
import 'package:mind_task/core/utils/dependency_locator/dependency_injection.dart';
import 'package:mind_task/root_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await setUpLocator();

  Bloc.observer = CubitObserver();
  runApp(
    EasyLocalization(
      path: 'lib/l10n/translation',
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      fallbackLocale: const Locale('en'),
      saveLocale: true,
      startLocale: const Locale('ar'),
      child: const RootApp(),
    ),
  );
}
