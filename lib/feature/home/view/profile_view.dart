import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/card_model.dart';
import 'package:technomasr_tasks/feature/home/models/row_model.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_botm_password_sheet.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_bottom_sheet.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_name_bottom_sheet.dart';
import 'package:technomasr_tasks/feature/home/widgets/profile_custom_row.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';
import 'package:technomasr_tasks/utils/widgets/custom_profile_listtile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context,title: 'Profile', color: const Color(0xff223263)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 22,
                ),
                CustomProfileListTile(
                  onTap: () {
                    customshowBottomNameSheet(context);
                  },
                  cardModel: const CardModel(
                      title: 'Dominic Ovo',
                      image: Assets.imagesProfilePicture,
                      subtitle: '@dominic_ovo'),
                ),
                const SizedBox(
                  height: 34,
                ),
                ProfileCustomRow(
                  rowModel: RowModel(
                      title: "Email",
                      image: Assets.imagesgmyemailIcon,
                      subtitle: "rex4dom@gmail.com",
                      ontap: () {
                        customshowBottomSheet(context,
                            title: 'Change Email',
                            icon: Assets.imagesgmyemailIcon,
                            showText: true,
                            hintText: 'Write your new email');
                      }),
                ),
                const SizedBox(
                  height: 34,
                ),
                ProfileCustomRow(
                  rowModel: RowModel(
                      title: 'Phone Number',
                      image: Assets.imagesgPhoneIcon,
                      subtitle: '(307)555-0133',
                      ontap: () {
                        customshowBottomSheet(context,
                            title: 'Phone Number',
                            icon: Assets.imagesgPhoneIcon,
                            showText: false,
                            hintText: '(307)555-0133');
                      }),
                ),
                const SizedBox(
                  height: 34,
                ),
                ProfileCustomRow(
                    rowModel: RowModel(
                        title: 'Change Password',
                        image: Assets.imagesgPasswordIcon,
                        subtitle: '*********',
                        ontap: () {
                          customshowBottomPasswordSheet(context);
                        })),
              ],
            ),
          ),
        ));
  }
}
