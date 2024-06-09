import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/feature/auth/views/register_view.dart';

class CustomRowDontHave extends StatelessWidget {
  const CustomRowDontHave({super.key, required this.title1, required this.title2, this.ontap});
final String title1;
final String title2;
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title1,
          style: AppFonts.textStyle12().copyWith(
            color: const Color(0xff9098B1),
            fontWeight: FontWeight.w400
          ),),

         GestureDetector(
          onTap: ontap ?? () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterView(),
              ),
            ),
           child: Text(
              title2,
              style: AppFonts.textStyle12().copyWith(
                color: const Color(0xffFF000A),
              ),
            
                   ),
         ),
      ],
    );
  }
}
