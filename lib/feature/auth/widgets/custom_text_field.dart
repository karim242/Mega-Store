import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, required this.imageIcon,
  required this.ontap,  required this.ontaped, this.obscureText, this.suffixIcon ,  });
final String hintText;
final String imageIcon;
final void Function() ontap;
final  bool ontaped ;
final bool? obscureText;
final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 48 ,
      width: 343,
      child: TextField(
        obscureText:obscureText ?? false,
        onTap:ontap,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:AppFonts.textStyle12().copyWith(
              color: const Color(0xff9098B1),
              fontWeight: FontWeight.w400,
              
            ),
            suffixIcon: suffixIcon,
          prefixIcon: SvgPicture.asset(
            imageIcon,
            color: ontaped ?const Color(0xff9098B1 ):const   Color(0xff40BFFF) ,
            fit: BoxFit.scaleDown,
            width: 24,
            height: 24,
          ),
          errorBorder: errorborderBuilder(),
          enabledBorder: borderBuilder(),
          focusedBorder: foucsborderBuilder(),
        ),
      ),
    );
  }

  OutlineInputBorder borderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color(0xffEBF0FF),
      ),
    );
  }
  OutlineInputBorder errorborderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color(0xffFF000A),
      ),
    );
  }

  OutlineInputBorder foucsborderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
                width: 1.5,

        color: Color(0xff40BFFF),
      ),
    );
  }
}
