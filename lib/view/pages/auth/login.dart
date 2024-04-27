import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_task/config/generate_router.dart';
import 'package:mind_task/core/assets_names/images_icons_names.dart';
import 'package:mind_task/core/utils/dependency_locator/dependency_injection.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';
import 'package:mind_task/core/utils/snackbar/snackbar.dart';
import 'package:mind_task/view/widgets/auth_button.dart';
import 'package:mind_task/view/widgets/auth_input.dart';
import 'package:mind_task/viewmodel/auth_viewmodel/auth_viewmodel.dart';

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
        padding: const EdgeInsets.all(30),
        child: BlocProvider(
          create: (context) => AuthViewmodel(
            authRepo: kAuthRepo,
            userRepo: kUserRepo,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(Assets.imagesLogoImage),
                ),
                const SizedBox(height: 100),
                AuthFieldInput(
                  controller: _emailController,
                  prefixIcon: Image.asset(Assets.iconsEmail),
                  hintText: 'auth.email'.tr(),
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
                  hintText: 'auth.password'.tr(),
                  prefixIcon: Image.asset(Assets.iconsPassLock),
                  isItPassword: true,
                  validator: (input) {
                    if (input!.isEmpty) {
                      return 'auth.requierd.password'.tr();
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 50),
                BlocConsumer<AuthViewmodel, AuthViewmodelState>(
                  listener: (context, state) {
                    if (state.isLoginSuccess) {
                      showSnackBar(context, message: 'auth.login_success'.tr());
                      
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        GenerateRouter.mainNavigation,
                        (route) => false,
                      );
                    }
                    if (state.isLoginFailed) {
                      showSnackBar(context, message: state.errorMessage!);
                    }
                  },
                  builder: (context, state) {
                    if (state.isLoginLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return AuthButton(
                      text: 'auth.login'.tr(),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthViewmodel>().login(
                              email: _emailController.text.trim(),
                              password: _passwordController.text);
                        }
                      },
                    );
                  },
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
      ),
    );
  }
}
