
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class TextAndHeartRow extends StatelessWidget {
  const TextAndHeartRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 300,
          height: 60,
          child: Text('Product Name will dispaly here ',
          style: AppFonts.textStyle14().copyWith(
            color:const Color(0xff333537),
            fontSize: 20
          ),),
        ),
        const SizedBox(width: 19,),
              SvgPicture.asset(
              Assets.imagesheartIcon,
              width: 24,
              height: 24,
              color: const Color(0xff9098B1),
            )
      ],
    );
  }
}