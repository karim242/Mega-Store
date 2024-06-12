
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class StepperActiveItem extends StatelessWidget {
  const StepperActiveItem({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.positiveColor,
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18,
                )),
            Container(
              height: 1,
              width: 55,
              color: AppColors.positiveColor,
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: AppFonts.textStyle12().copyWith(
              color: AppColors.scondaryColor, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
