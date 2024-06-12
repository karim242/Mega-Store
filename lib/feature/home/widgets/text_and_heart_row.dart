
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class TextAndHeartRow extends StatefulWidget {
  const TextAndHeartRow({
    super.key,
  });

  @override
  State<TextAndHeartRow> createState() => _TextAndHeartRowState();
}

class _TextAndHeartRowState extends State<TextAndHeartRow> {
  bool taped = false;
  @override
  Widget build(BuildContext context) {
    return  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 290,
            height: 60,
            child: Text('Product Name will dispaly here ',
            style: AppFonts.textStyle14().copyWith(
              color:const Color(0xff333537),
              fontSize: 20
            ),),
          ),
          const SizedBox(width: 10,),
               InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
      onTap: (){
        setState(() {
          taped =!taped;
        });
      },
      child: SvgPicture.asset(
                Assets.imagesheartIcon,
                width: 24,
                height: 24,
                color:taped?Colors.red: const Color(0xff9098B1),
              
      ))
        ],
      
    );
  }
}