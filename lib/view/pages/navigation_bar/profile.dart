import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mind_task/core/utils/local_database/cache_service.dart';
import 'package:mind_task/viewmodel/navigation_bar_viewmodel/navigation_bar_viewmodel.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.setLocale(
              context.locale.languageCode == 'en'
                  ? const Locale('ar')
                  : const Locale('en'),
            );
            CacheService.saveLang(context.locale.languageCode);
            context.read<NavigationBarViewmodel>().getHomeData();
          },
          child: Text('profile.ch_lang'.tr()),
        ),
      ],
    );
  }
}
