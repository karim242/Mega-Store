import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.title, this.onTap, this.backgroundColor});
final String title;
final void Function()? onTap;
final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 57,
      child: ElevatedButton( 
      style: ElevatedButton.styleFrom(
          backgroundColor:backgroundColor ?? const Color(0xffED1C24),
          foregroundColor: Colors.white,
          elevation: 1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        
        onPressed: onTap ??() {  }, child:  Text(title,
        style:AppFonts.textStyle14() ,),),
    );

  }
}