import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/widgets/stepper_active_item.dart';
import 'package:technomasr_tasks/feature/home/widgets/stepper_in_active_item.dart';
class CustomStepper extends StatelessWidget {
  const CustomStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepperActiveItem(
          title: 'Packing',
        ),
        StepperActiveItem(
          title: 'Shipping',
        ),
        StepperActiveItem(
          title: 'Arriving',
        ),
        StepperInActiveItem(),
      ],
    );
  }
}


