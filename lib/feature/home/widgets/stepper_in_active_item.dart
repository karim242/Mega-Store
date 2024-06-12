import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class StepperInActiveItem extends StatelessWidget {
  const StepperInActiveItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey.shade200,
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 18,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Success',
          style: AppFonts.textStyle12().copyWith(
              color: AppColors.scondaryColor, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}