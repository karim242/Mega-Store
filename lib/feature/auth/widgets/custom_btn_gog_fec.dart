import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomBottonGoogleAndFac extends StatelessWidget {
  const CustomBottonGoogleAndFac({super.key, required this.title, required this.imageIcon});
final String title;
final String imageIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 354,
      height: 57,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xff9098B1),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xffEBF0FF),
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        onPressed: () {},
        icon: SvgPicture.asset(imageIcon),
        label: Align(
          alignment: Alignment.center,
          child: Text(title, style: AppFonts.textStyle14()),
        ),
      ),
    );
  }
}
