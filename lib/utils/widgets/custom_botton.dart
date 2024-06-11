import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton(
      {super.key, required this.title, this.onTap, this.backgroundColor});
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
          backgroundColor: backgroundColor ?? const Color(0xffED1C24),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        onPressed: onTap ?? () {},
        child: Text(
          title,
          style: AppFonts.textStyle14(),
        ),
      ),
    );
  }
}

class CancelCustomBotton extends StatelessWidget {
  const CancelCustomBotton(
      {super.key,  this.onTap, this.foregroundColor});
  final void Function()? onTap;
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 57,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          ///backgroundColor:backgroundColor ?? const Color(0xffED1C24),
          foregroundColor: foregroundColor,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color:Color(0xffEBF0FF)
            ),
            borderRadius: BorderRadius.all(Radius.circular(5),
            
            ),
          ),
        ),
        onPressed: onTap ?? () {},
        child: Text(
          'Cancel',
          style: AppFonts.textStyle14(),
        ),
      ),
    );
  }
}
