import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CuponRoW extends StatelessWidget {
  const CuponRoW({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CuponTextField(),
        CustomApplyButton(),
      ],
    );
  }
}

class CustomApplyButton extends StatelessWidget {
  const CustomApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // width: 87,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffba6400),
          foregroundColor: Colors.white,
          elevation: 1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Apply',
          style: AppFonts.textStyle14(),
        ),
      ),
    );
  }
}

class CuponTextField extends StatelessWidget {
  const CuponTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width/1.55,
      height: 56,
      child: TextField(
        decoration: InputDecoration(
          errorBorder: errorborderBuilder(),
          focusedBorder: foucsborderBuilder(),
          enabledBorder: enableBorder(),
          hintText: "Enter Your Coupon Code",
          hintStyle: AppFonts.textStyle12().copyWith(
            fontWeight: FontWeight.w400,
            color: const Color(0xff9098B1),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder enableBorder() {
    return const OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
          borderSide: BorderSide(
            width: 1.5,
            color: Color(0xffEBF0FF),
          ),
        );
  }
  OutlineInputBorder errorborderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide:  BorderSide(
        width: 1.5,
        color: AppColors.redColor,
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
