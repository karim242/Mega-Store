import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_product_big_img.dart';
import 'package:flutter_svg/svg.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});
 final Map<String, bool> productImages =  const {
    Assets.imagesyouMayProductImg: false,
    Assets.imagesFsImage2: true,
    Assets.imagesFsImage1: true,
    Assets.imagesimage104: false,
 };
   
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
     //mainAxisSpacing: 12,
      crossAxisSpacing: 15,
      childAspectRatio: 155/246

    ), 
    itemCount: productImages.length,
    itemBuilder: (BuildContext context, int index) { 
      return  SizedBox(
      height: 232,
        child:   Stack(
          alignment: const Alignment(-0.9, -0.8),
          children: [CustomProductBigImage(
            image: productImages.keys.toList()[index],
            shoeText: productImages.values.toList()[index],
            
            ),
              SvgPicture.asset(
              Assets.imagesheartIcon,
            )
        ]));
     },);
  }
}