import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/view/product_details_view.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomProductBigImage extends StatelessWidget {
  const CustomProductBigImage({super.key, required this.image, required this.shoeText, });
final String image;
final bool shoeText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155,
      height: 246,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetails()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 155 / 162,
                child: Image.asset(image,
                fit: BoxFit.fill,),
        
                ),
            Text('FS - Nike Air Max 270 React',
                style: AppFonts.textStyle12().copyWith(
                    fontWeight: FontWeight.w700, color: const Color(0xff223263))),
            Text(
              '\$299,43',
              style: AppFonts.textStyle12().copyWith(
                fontWeight: FontWeight.w700,
                color: const Color(0xff50555C),
              ),
            ),
           shoeText? const SizedBox(height: 10,) : Row(
              children: [
                Text(
                  '\$534,33',
                  style: AppFonts.textStyle12().copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff9098B1),
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
               const SizedBox(
                  width: 6,
                ),
                Text(
                  '24% Off',
                  style: AppFonts.textStyle12().copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFB7181),
        
                  ),
                ),
        
              ]),
          ],
        ),
      ),
    );
  }
}
