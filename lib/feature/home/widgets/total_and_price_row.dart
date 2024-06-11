
import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class TotandPriceRow extends StatelessWidget {
  const TotandPriceRow({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total Price',
          style: AppFonts.textStyle12().copyWith(
              color: const Color(
            0xff223263,
          )),
        ),
        Text(
          '\$766.86',
          style: AppFonts.textStyle12().copyWith(
              color: const Color(
            0xff40BFFF,
          )),
        ),
      ],
    );
  }
}