import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/view/product_details_view.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_product_col.dart';

class FlashProductItem extends StatelessWidget {
  const FlashProductItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      alignment: const Alignment(-0.9, -0.8),
      children: [
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetails()));
            },
            child: CustomProductCol(
              image: image,
            )),
        InkWell(
          onTap: () {}
          ,
          child: SvgPicture.asset(
            Assets.imagesheartIcon,
          ),
        )
      ],
    );
  }
}
