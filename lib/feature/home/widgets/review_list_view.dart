import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/profile_model.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_review_listtile.dart';

class ReviewListView extends StatelessWidget {
  const ReviewListView({super.key});
final List<ProfileModel> profile=const  [
  ProfileModel(title: 'James Lawson', image: Assets.imagesProfilePicture),
  ProfileModel(title: 'Laura Octavian', image: Assets.imageslauraProfile),
  ProfileModel(title: 'Jhonson Bridge', image: Assets.imagesBridgeProfile),
  ProfileModel(title: 'Griffin Rod', image: Assets.imagesgriffinRodProfile),
  ProfileModel(title: 'James Lawson', image: Assets.imagesProfilePicture),

];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: profile.length,
      itemBuilder: (BuildContext context, int index) { 
return CustomReviewListTileAndDetail(profile: profile[index]);
       },);
  }
}