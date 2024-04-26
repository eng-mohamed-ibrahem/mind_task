import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_task/core/assets_names/images_icons_names.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';
import 'package:mind_task/view/widgets/auth_button.dart';
import 'package:mind_task/view/widgets/auth_input.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              SvgPicture.asset(Assets.imagesLogoIcon),
              const SizedBox(height: 100),
              AuthFieldInput(
                controller: _emailController,
                validator: (input) {
                  if (input!.isEmpty) {
                    return 'auth.requierd.email'.tr();
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              AuthFieldInput(
                  controller: _passwordController,
                  validator: (input) {
                    if (input!.isEmpty) {
                      return 'auth.requierd.password'.tr();
                    }
                    return null;
                  }),
              const SizedBox(height: 50),
              AuthButton(
                text: 'auth.login'.tr(),
                onPressed: () {},
              ),
              const SizedBox(height: 100),
              Text(
                'auth.or_signin'.tr(),
                style: TextStyle(
                  color: HexColor('#757575'),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Assets.iconsGoogleIcon),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        HexColor('#F5F6F9'),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Assets.iconsAppleIcon),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        HexColor('#F5F6F9'),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Assets.iconsFacebookIcon),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        HexColor('#F5F6F9'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
