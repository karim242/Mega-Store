
import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/teotal_price_model.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class TextAndPriceRow extends StatelessWidget {
  const TextAndPriceRow({
    super.key,
    required this.totalPrice, this.textColor, this.fontWeigh,
  });
  final TotalPriceModel totalPrice;
  final Color? textColor;
 final FontWeight? fontWeigh;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          totalPrice.title,
          style: AppFonts.textStyle12().copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(
                0xff9098B1,
              )),
        ),
        SizedBox(
          //height: 44,
          width: 176,
          child: Text(
            totalPrice.price,
            textAlign: TextAlign.end,
            style: AppFonts.textStyle12().copyWith(
                fontWeight:fontWeigh ?? FontWeight.w400,
                color: textColor ?? const Color(
                  0xff223263,
                )),
          ),
        ),
      ],
    );
  }
}
