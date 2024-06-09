import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.title, this.onTap});
final String title;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 57,
      child: ElevatedButton( 
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffED1C24),
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