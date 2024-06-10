import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/feature/auth/views/forget_pasw_view.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_btn_gog_fec.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_line_and_or.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_mega.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_row_donthave.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool ontaped1 = true;
  bool ontaped2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const CustomMega(
                    title: 'Welcome  to MEGA Store',
                    subTitle: 'Sign in to continue',
                    gap: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        CustomTextField(
                          ontap: () {
                            setState(() {
                              ontaped1 = !ontaped1;
                            });
                          },
                          ontaped: ontaped1,
                          hintText: 'Your Email',
                          imageIcon: Assets.imagesMessageIcon,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                          ontap: () {
                            setState(() {
                              ontaped2 = !ontaped2;
                            });
                          },
                          ontaped: ontaped2,
                          obscureText: true,
                          hintText: 'Password',
                          imageIcon: Assets.imagesCloseIcon,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const CustomBotton(
                          title: 'Sign In',
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        const CustomLineAndOr(),
                        const SizedBox(
                          height: 21,
                        ),
                        const CustomBottonGoogleAndFac(
                          title: 'Login with Google',
                          imageIcon: Assets.imagesGoogleIcon,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const CustomBottonGoogleAndFac(
                          title: 'Login with facebook',
                          imageIcon: Assets.imagesFacebookIcon,
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgetPaswView(),
                                ),
                              );
                            },
                            child: Text(
                              "Forgot Password?",
                              style: AppFonts.textStyle12()
                                  .copyWith(color: const Color(0xffFF000A)),
                            )),
                        const CustomRowDontHave(
                          title1: 'Don’t have a account? ',
                          title2: 'Register',
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
