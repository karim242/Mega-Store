
import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/widgets/ship_to_btn_row.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomShipToItem extends StatelessWidget {
  const CustomShipToItem({
    super.key, required this.name, this.borderColor, this.onTap,
  });
final String name;
final Color? borderColor;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color:borderColor?? const Color(0xffEBF0FF), width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppFonts.textStyle14().copyWith(
                color: AppColors.primaryColor
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 295,
              height: 44,
              child: Text(
                '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                style: AppFonts.textStyle12().copyWith(
                  color: AppColors.scondaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              '+99 1234567890',
              style: AppFonts.textStyle12().copyWith(
                color: AppColors.scondaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
             ShipToBottonRow(onTap: onTap,)
          ],
        ),
      ),
    );
  }
}
