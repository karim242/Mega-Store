import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_botton.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_mega.dart';
import 'package:technomasr_tasks/views/auth_views/widgets/custom_text_field.dart';

class ResetPaswView extends StatelessWidget {
  const ResetPaswView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const CustomMega(
                title: 'Reset Password',
                subTitle: '',
                gap: 28,
              ),
              const SizedBox(
                height: 69 - 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'password',
                      imageIcon: Assets.imagesCloseIcon,
                      obscureText: true,
                      suffixIcon: SvgPicture.asset(
                        Assets.imagesShow,
                        fit: BoxFit.scaleDown,
                        width: 24,
                        height: 24,
                      ),
                      ontap: () {},
                      ontaped: true,
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    CustomTextField(
                      hintText: 'confirm password',
                      imageIcon: Assets.imagesCloseIcon,
                      obscureText: true,
                       suffixIcon: SvgPicture.asset(
                        Assets.imagesShow,
                        fit: BoxFit.scaleDown,
                        width: 24,
                        height: 24,
                      ),
                      ontap: () {},
                      ontaped: true,
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    CustomBotton(
                      onTap: () {
                        //Navigator.push(context,
                        //  MaterialPageRoute(builder: (context) => const VerifyAccount()));
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
