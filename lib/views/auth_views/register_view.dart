import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_botton.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_mega.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_row_donthave.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool ontaped1 = true;
  bool ontaped2 = true;
  bool ontaped3 = true;
  bool ontaped4 = true;
  bool ontaped5 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const CustomMega(
                title: 'Let’s Get Started',
                subTitle: 'Create an new account',
                gap: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'Full Name',
                      imageIcon: Assets.imagesProfileIcon,
                      ontap: () {
                        setState(() {
                          ontaped1 = !ontaped1;
                        });
                      },
                      ontaped: ontaped1,
                    ),
                    const SizedBox(height: 8),
                    CustomTextField(
                      hintText: 'Your Email',
                      imageIcon: Assets.imagesMessageIcon,
                      ontap: () {
                        setState(() {
                          ontaped2 = !ontaped2;
                        });
                      },
                      ontaped: ontaped2,
                    ),
                    const SizedBox(height: 8),
                    CustomTextField(
                      hintText: 'Your Phone ',
                      imageIcon: Assets.imagesPhoneIcon,
                      ontap: () {
                        setState(() {
                          ontaped3 = !ontaped3;
                        });
                      },
                      ontaped: ontaped3,
                    ),
                    const SizedBox(height: 8),
                    CustomTextField(
                      hintText: 'Password',
                      obscureText: true,
                      imageIcon: Assets.imagesCloseIcon,
                      ontap: () {
                        setState(() {
                          ontaped4 = !ontaped4;
                        });
                      },
                      ontaped: ontaped4,
                    ),
                    const SizedBox(height: 8),
                    CustomTextField(
                      hintText: 'Confirm Password',
                      imageIcon: Assets.imagesCloseIcon,
                      obscureText: true,
                      ontap: () {
                        setState(() {
                          ontaped5 = !ontaped5;
                        });
                      },
                      ontaped: ontaped5,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const CustomBotton(
                      title: 'Sign Up',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomRowDontHave(
                      title1: 'have a account? ',
                      title2: 'Sign In',
                      ontap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
