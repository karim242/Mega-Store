import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class AppBarTextField extends StatelessWidget {
  const AppBarTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 41,
      width: 263,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: const Icon(Icons.search, color: Color(0xff50555C)),
          hintText: "Search Product",
          hintStyle: AppFonts.textStyle12().copyWith(color: const Color(0xff9098B1),
           fontWeight: FontWeight.w400),
          fillColor: const Color(0xffF3F3F3),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(
              color:  Color(0xffD8D8D8),
              width: 0.0,
            ),
          ),
        ),
      ),
    );
  }
}