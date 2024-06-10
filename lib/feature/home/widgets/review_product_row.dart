import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/view/review_view.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/widgets/star_row.dart';

class ReviewProductRow extends StatelessWidget {
  const ReviewProductRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Review Product',
              style: AppFonts.textStyle14()
                  .copyWith(color: const Color(0xff223263)),
            ),
            TextButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const ReviewView()));
                },
                child: Text(
                  'See More',
                  style: AppFonts.textStyle12()
                      .copyWith(color: const Color(0xff898A8D)),
                ))
          ],
        ),
        Row(
          children: [
            const StarRow(
              starSize: 16,
            ),
            Text('4.5',
                style: AppFonts.textStyle12().copyWith(
                  fontSize: 10,
                  color: const Color(0xff9098B1),
                )),
            Text('(5 Review)',
                style: AppFonts.textStyle12().copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff9098B1),
                ))
          ],
        )
      ],
    );
  }
}
