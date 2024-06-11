import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/auth/widgets/custom_text_field.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

Future customshowBottomSheet(
  BuildContext context, {
  required String title,
  required String icon,
  required bool showText,
  required String hintText,
}) {
  return showModalBottomSheet(
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 325,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48.0),
            Text(
              title,
              style: AppFonts.textStyle14()
                  .copyWith(color: const Color(0xff223263)),
            ),
            const SizedBox(height: 12.0),
            CustomTextField(
              hintText: hintText,
              imageIcon: icon,
              ontap: () {},
              ontaped: false,
            ),
            const SizedBox(height: 12.0),
            showText
                ? Text(
                    'We Will Send verification to your New Email',
                    style: AppFonts.textStyle12().copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff50555C),
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 70,
            ),
            CustomBotton(
              title: 'Save',
              onTap: () {
                Navigator.pop(context);
              },
              backgroundColor: const Color(0xffBA6400),
            ),
                         const SizedBox(height: 12.0),

          ],
        ),
      );
    },
  );
}
