import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class CustomIncreaseAndDecreaseRow extends StatelessWidget {
  const CustomIncreaseAndDecreaseRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 32,
          height: 24,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              border: Border.all(
                color: const Color(0xffEBF0FF),
                width: 1,
              )),
          child: SvgPicture.asset(
            Assets.imagesMinusIcon,
            width: 16,
            height: 16,
          ),
        ),
        Container(
          width: 40,
          height: 24,
          decoration: BoxDecoration(
            color: const Color(0xffEBF0FF),
            border: Border.all(
              color: const Color(0xffEBF0FF),
              width: 1,
            ),
          ),
          child: Text(
            "1",
            textAlign: TextAlign.center,
            style: AppFonts.textStyle12().copyWith(
                fontWeight: FontWeight.w400, color: const Color(0xff223263)),
          ),
        ),
        Container(
          width: 32,
          height: 24,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              border: Border.all(
                color: const Color(0xffEBF0FF),
                width: 1,
              )),
          child: SvgPicture.asset(
            Assets.imagesPlusIcon,
            width: 16,
            height: 16,
          ),
        ),
      ],
    );
  }
}
