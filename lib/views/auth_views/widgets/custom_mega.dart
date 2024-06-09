
import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class CustomMega extends StatelessWidget {
  const CustomMega({
    super.key, required this.title, required this.subTitle, required this.gap,
  });
final String title;
final String subTitle;
final double gap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 42,),
        Image.asset( Assets.imagesMega2,width: 318, height: 86,),
         SizedBox(height: gap,),
         Text(title,
        style: const TextStyle(fontSize: 16,letterSpacing: 0.5,
        fontWeight: FontWeight.bold,color: Color(0xff223263),),),
        const SizedBox(height: 8,),
         Text(subTitle,style: AppFonts.textStyle12().copyWith(
            color: const Color(0xff9098B1),fontWeight: FontWeight.w400),),
        const SizedBox(height: 28,),
        
        
      ],
    );
  }
}