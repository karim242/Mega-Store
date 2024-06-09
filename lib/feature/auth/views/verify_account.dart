import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/auth/views/reset_pasw_view.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_botton.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_mega.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const CustomMega(
                title: 'Verify Your Account',
                subTitle: 'check your Email ',
                gap: 28,
              ),
            const   SizedBox(
                height: 128,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                      CustomBotton(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const ResetPaswView()));
                      },
                      title: 'Verify',
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
