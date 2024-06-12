import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/view/search_view.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class AppBarTextField extends StatelessWidget {
  const AppBarTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 41,
      width: 263,
      child: TextField(
        onSubmitted: (value) {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => const SearchView()));
        },
        decoration: InputDecoration(
          
          filled: true,
          prefixIcon:  Icon(Icons.search, color: AppColors.scondaryColor),
          hintText: "Search Product",
          hintStyle: AppFonts.textStyle12().copyWith(color: const Color(0xff9098B1),
           fontWeight: FontWeight.w400),
          fillColor: const Color(0xffF3F3F3),
          enabledBorder: enableBorder(),
          focusedBorder: foucsborderBuilder(),
        ),
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
  OutlineInputBorder enableBorder() {
    return const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          borderSide: BorderSide(
            color:  Color(0xffD8D8D8),
            width: 0.0,
          ),
        );
  }
}