import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
     children: List.generate(5, (index) =>  Padding(
        padding: const EdgeInsets.only(right: 16),
        child: GestureDetector(
          onTap: onTap,
          child: const CustomCategoryItem()),
      ),)
    );
  }
}

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key, this.fontSize, this.radius, this.textHeight
  });
  final double? fontSize;
  final double? textHeight;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
                  radius:radius?? 40,
                  child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                       Assets.imagesProfilePicture,
                        fit: BoxFit.fill,
                      )),
          ),
            const SizedBox(height: 9,),
            SizedBox(
              height:textHeight?? 28.72,
              width: 70,
              child: Text(
                'Category  Name ',
                textAlign: TextAlign.center,
                style: AppFonts.textStyle12().copyWith(
                fontSize: fontSize??10,
                fontWeight: FontWeight.w400,
                color: AppColors.scondaryColor,
                ),
              )
            )
      
        ],
      ),
    );
  }
}