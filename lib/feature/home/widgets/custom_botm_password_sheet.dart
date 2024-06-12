import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_text_field.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

Future customshowBottomPasswordSheet(BuildContext context) {
  return showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
       shape: RoundedRectangleBorder(
     borderRadius:
        BorderRadius.circular(0.0),),
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child:  Container(
          height: 469,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 24.0),
              const CustomBotmSheetTextField(
                title: 'Old Password',
              ),
              const SizedBox(height: 12.0),
              const CustomBotmSheetTextField(
                title: 'New Password',
              ),
              const SizedBox(height: 12.0),
              const CustomBotmSheetTextField(
                title: 'New Password Again',
              ),
              const SizedBox(height: 50.0),
              CustomBotton(
                title: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
                backgroundColor: const Color(0xffBA6400),
              ),
              const SizedBox(height: 12.0),
            ],
           ) ),
        );
      });
}

class CustomBotmSheetTextField extends StatelessWidget {
  const CustomBotmSheetTextField({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: AppFonts.textStyle14().copyWith(color: const Color(0xff223263)),
      ),
      const SizedBox(height: 12.0),
      CustomTextField(
        hintText: "•••••••••••••••••",
        imageIcon: Assets.imagesCloseIcon,
        ontap: () {},
        ontaped: true,
      ),
    ]);
  }
}
