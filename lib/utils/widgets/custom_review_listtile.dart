import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/profile_model.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/widgets/star_row.dart';

class CustomReviewListTileAndDetail extends StatelessWidget {
  const CustomReviewListTileAndDetail({super.key, required this.profile});
final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 24,
              child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    profile.image ,
                    fit: BoxFit.fill,
                  )),
            ),
            title: Text(
              profile.title,
              style: AppFonts.textStyle14()
                  .copyWith(color: const Color(0xff223263)),
            ),
            subtitle: const StarRow(
              starSize: 16,
            )),
        SizedBox(
          width: 330,
          height: 100,
          child: Text(
              ' air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
              style: AppFonts.textStyle12().copyWith(
                  color: const Color(0xff9098B1), fontWeight: FontWeight.w400)),
        ),
        const SizedBox(height: 16),
        Text(' December 10, 2016',
            style: AppFonts.textStyle12().copyWith(
                color: const Color(0xff9098B1), fontWeight: FontWeight.w400)),
      ],
    );
  }
}
