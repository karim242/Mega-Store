import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/card_model.dart';
import 'package:technomasr_tasks/feature/home/widgets/profile_custom_row.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';
import 'package:technomasr_tasks/utils/widgets/custom_profile_listtile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: 'Profile', color: const Color(0xff223263)),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 22,
                ),

                
                CustomProfileListTile(
                  cardModel: CardModel(
                      title: 'Dominic Ovo',
                      image: Assets.imagesProfilePicture,
                      subtitle: '@dominic_ovo'),
                ),
                SizedBox(
                  height: 34,
                ),
                ProfileCustomRow(cardModel: 
                CardModel(title: "Email", 
                image: Assets.imagesMessageIcon,
                 subtitle: "rex4dom@gmail.com")
                 ,)
              ],
            ),
          ),
        ));
  }
}
