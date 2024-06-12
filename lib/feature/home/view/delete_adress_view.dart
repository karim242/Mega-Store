import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

class DeleteAddressView extends StatelessWidget {
  const DeleteAddressView({super.key});

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
                    .copyWith(fontSize: 24, color: AppColors.primaryColor,),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 22,
                width: 303,
                child: Text(
                  'Are you sure wanna delete address ',
                  textAlign: TextAlign.center,
                  style: AppFonts.textStyle12().copyWith(

                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomBotton(
                title: ' Delete ',
                onTap: () {},
                backgroundColor: AppColors.redColor,
              ),
              const SizedBox(
                height: 16,
              ),
              CancelCustomBotton(
                onTap: () {
                  Navigator.pop(context);
                },
                foregroundColor: AppColors.scondaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
