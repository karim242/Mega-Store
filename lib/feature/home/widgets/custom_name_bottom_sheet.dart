import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_text_field.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

Future customshowBottomNameSheet(BuildContext context) {
  return showModalBottomSheet(
    //  useSafeArea: true,

      isScrollControlled: true,
    
      context: context,
    
    shape: RoundedRectangleBorder(
     borderRadius:
        BorderRadius.circular(0.0),),
      builder: (BuildContext context) {
        return Padding(
          padding:  EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom==0? 0:
            MediaQuery.of(context).viewInsets.bottom),
          child: Container(
             // height: 361,
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 29.0),
                  const CustomNameBotmSheetTextField(
                    title: 'First Name',
                  ),
                  const SizedBox(height: 24.0),
                  const CustomNameBotmSheetTextField(
                    title: 'Last Name',
                  ),
                  const SizedBox(height: 40.0),
                  CustomBotton(
                    title: 'Save',
                    onTap: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: const Color(0xffBA6400),
                  ),
                  const SizedBox(height: 12.0),
                ],
              )),
        );
      });
}

class CustomNameBotmSheetTextField extends StatelessWidget {
  const CustomNameBotmSheetTextField({
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
        hintText: "Enter Name",
        imageIcon: Assets.imagesProfileIcon,
        ontap: () {},
        ontaped: true,
      ),
    ]);
  }
}
