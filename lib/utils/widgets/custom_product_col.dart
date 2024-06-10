import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomProductCol extends StatelessWidget {
  const CustomProductCol({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 141,
      height: 224,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
              aspectRatio: 141 / 143,
              child: Image.asset(image)),
          Text('FS - Nike Air Max 270 React',
              style: AppFonts.textStyle12().copyWith(
                  fontWeight: FontWeight.w700, color: const Color(0xff223263))),
          Text(
            '\$299,43',
            style: AppFonts.textStyle12().copyWith(
              fontWeight: FontWeight.w700,
              color: const Color(0xff50555C),
            ),
          ),
          Row(
            children: [
              Text(
                '\$534,33',
                style: AppFonts.textStyle12().copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff9098B1),
                  decoration: TextDecoration.lineThrough,
                ),
              ),
             const SizedBox(
                width: 6,
              ),
              Text(
                '24% Off',
                style: AppFonts.textStyle12().copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffFB7181),

                ),
              ),

            ]),
        ],
      ),
    );
  }
}
