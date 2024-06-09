import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/views/auth_views/verify_account.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_botton.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_mega.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_text_field.dart';

class ForgetPaswView extends StatefulWidget {
  const ForgetPaswView({super.key});

  @override
  State<ForgetPaswView> createState() => _ForgetPaswViewState();
}

class _ForgetPaswViewState extends State<ForgetPaswView> {
  bool  ontaped = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const CustomMega(
                title: 'Forget Password',
                subTitle: 'Add your email  to send code ',
                gap: 28,
              ),
              const SizedBox(
                height: 69-28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                      CustomTextField(
                        hintText: 'Your Email',
                        imageIcon: Assets.imagesMessageIcon,
                         ontap: () {
                          setState(() {
                            ontaped = !ontaped;
                          });
                        },
                        ontaped: ontaped,
                      ),
                        const SizedBox(
                      height: 31,
                    ),
                     CustomBotton(
                      onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => const VerifyAccount()));
                      },
                      title: 'SEND',
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
