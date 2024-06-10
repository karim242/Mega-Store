import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class CustomIncreaseAndDecreaseRow extends StatelessWidget {
  const CustomIncreaseAndDecreaseRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 104,
        height: 22,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color(0xffEBF0FF),
              width: 1,
            )),
        child: Row(
          children: [
            SvgPicture.asset(Assets.imagesMinusIcon,
               width: 16,
              height: 16,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 3),
              child: Text(
                "1",
                textAlign: TextAlign.center,
                style: AppFonts.textStyle12().copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff223263)),
              ),
            ),
            SvgPicture.asset(
              Assets.imagesPlusIcon,
              width: 16,
              height: 16,
            ),
          ],
        ));
  }
}
