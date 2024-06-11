import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/widgets/review_text_field.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';
import 'package:technomasr_tasks/utils/widgets/star_row.dart';

class WriteReviewView extends StatelessWidget {
  const WriteReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Write Review'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: 343,
                  height: 42,
                  child: Text(
                    "Please write Overall level of satisfaction with your shipping / Delivery Service",
                    style: AppFonts.textStyle14().copyWith(
                      color: const Color(0xff223263),
                    ),
                  )),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const StarBigRow(
                    starSize: 32,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    '4/5',
                    style: AppFonts.textStyle14()
                        .copyWith(color: const Color(0xff9098B1)),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Write Your Review',
                style: AppFonts.textStyle14().copyWith(
                  color: const Color(0xff223263),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const ReviewTextField(),
              const SizedBox(
                height: 266,
              ),
//const Spacer(),
              CustomBotton(
                onTap: () {},
                title: 'Send Review',
                backgroundColor: const Color(0xffBA6400),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
