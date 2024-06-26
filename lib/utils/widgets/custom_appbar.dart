import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

PreferredSizeWidget customAppBar( BuildContext context,{required String title,Color? color}) {

    return AppBar(
      shape: const RoundedRectangleBorder(
      side: BorderSide(width: 1.5,
       color: Color(0xffEBF0FF),
       ),
     
      ),
      leading: InkWell(
        onTap: (){
         
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios,
          size: 16,
          color: Color(
            0xff9098B1,
          ),
        ),
      ),
      title: Text(
        title,
        textAlign: TextAlign.left,
        style: AppFonts.textStyle14()
            .copyWith(fontSize: 16, color: color ??AppColors.scondaryColor),
      ),
    );
  
}