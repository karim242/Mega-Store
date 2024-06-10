import 'package:flutter/material.dart';

class RowDot extends StatelessWidget {
  const RowDot({super.key, });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomDotIndecator(isActive: false,),
      ),
      )
    );
  }
}


class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 8,
        height: 8,
        decoration: ShapeDecoration(
          color:isActive?const Color(0xffED1C24): const Color(0xff979797),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ));
  }
}