
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/widgets/appbar_text_field.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class HomeAppBarRow extends StatelessWidget {
  const HomeAppBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: AppBarTextField(),
        ),
        const SizedBox(
          width: 27,
        ),
        SvgPicture.asset(Assets.imagesCart),
      
      ],
    );
  }
}