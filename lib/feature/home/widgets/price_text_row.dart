import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class PriceTextRow extends StatelessWidget {
  const PriceTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(
              '\$299,43',
              style: AppFonts.textStyle12().copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: const Color(0xff50555C),
              ),
            ),
            const SizedBox(width:150 ,),
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
    );
  }
}