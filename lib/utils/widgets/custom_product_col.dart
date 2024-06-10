import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class CustomProductCol extends StatelessWidget {
  const CustomProductCol({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SvgPicture.asset(Assets.imagesFsImage1),
        
      ],
    );
  }
}