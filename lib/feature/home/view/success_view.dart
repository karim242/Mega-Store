import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/view/root_view.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

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
                    Assets.imagesgSuccessIcon,
               
                  ),
//const SizedBox(height: 16,),
                  Text('Success',style: AppFonts.textStyle14().copyWith(
                    fontSize: 24,
                    color: const Color(0xff223263)
                  ),),
                  const SizedBox(height: 8,),
                   SizedBox(height: 56,width: 303,
                  child: Text('thank you for shopping From  MEGA Store',
                  textAlign: TextAlign.center,
                  style: AppFonts.textStyle14().copyWith(
                    color: const Color(0xff9098B1),
          
                  ),
                  ),
                  ),
                  const SizedBox(height: 52,),
                   CustomBotton(
                title: 'Back To Home ',
                onTap: (){
                 Navigator.push(context, 
                 MaterialPageRoute(builder: (context) => const RootView()));
                },
                backgroundColor:const Color( 0xff50555C),)
            ],
          ),
        ),
      ),
    );
  }
}
