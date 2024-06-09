import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomLineAndOr extends StatelessWidget {
  const CustomLineAndOr({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       const Expanded(
          child: Divider(
            color: Color(0xffEBF0FF),
            thickness: 1,
          ),
        ),
       const SizedBox(
          width: 8,
        ),
        Text(
          'OR',
          style: AppFonts.textStyle14().copyWith(color: const Color(0xff9098B1)),
        ),
       const SizedBox(
          width: 8,
        ),
        const  Expanded(
          child: Divider(
            color: Color(0xffEBF0FF),
            thickness: 1,
          ),
        ),
      ]
    );
  }
}