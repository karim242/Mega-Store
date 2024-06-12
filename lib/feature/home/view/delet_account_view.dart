import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

class DeletAccountView extends StatelessWidget {
  const DeletAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.imagesAlertIcon,
              ),
//const SizedBox(height: 16,),
              Text(
                'Confirmation',
                style: AppFonts.textStyle14()
                    .copyWith(fontSize: 24, color: const Color(0xff223263)),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 22,
                width: 303,
                child: Text(
                  'Are you sure wanna delete your account ',
                  textAlign: TextAlign.center,
                  style: AppFonts.textStyle12().copyWith(

                      color: const Color(0xff223263),
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomBotton(
                title: ' Delete ',
                onTap: () {},
                backgroundColor: const Color(0xffED1C24),
              ),
              const SizedBox(
                height: 16,
              ),
              CancelCustomBotton(
                onTap: () {
                  Navigator.pop(context);
                },
                foregroundColor: const Color(0xff9098B1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
