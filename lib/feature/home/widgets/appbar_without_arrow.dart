 import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

AppBar customAppBarWithoutArrow({required String title}) {
    return AppBar(
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          width: 1.5,
          color: Color(0xffEBF0FF),
        ),
      ),
      title: Text(
       title,
        textAlign: TextAlign.left,
        style: AppFonts.textStyle14()
            .copyWith(fontSize: 16, color: const Color(0xff223263)),
      ),
    );
    }