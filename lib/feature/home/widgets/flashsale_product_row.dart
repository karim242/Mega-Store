import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/widgets/flashsale_product_item.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class FlashSaleProductRow extends StatelessWidget {
  const FlashSaleProductRow({super.key});
  final List<String> productImages = const [
    Assets.imagesFsImage1,
    Assets.imagesFsImage2,
    Assets.imagesFsImage1
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
     children: [
      
      FlashProductItem(image: productImages[0]),
      const SizedBox(
        width: 12,
      ),
      FlashProductItem(image: productImages[1]),
      const SizedBox(
        width: 12,
      ),
      FlashProductItem(image: productImages[0]),
    ],);
  }
}
