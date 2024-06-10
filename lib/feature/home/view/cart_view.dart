import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_increase_decrese_row.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: Color(0xffEBF0FF),
          ),
        ),
        title: Text(
          'Your Cart ',
          textAlign: TextAlign.left,
          style: AppFonts.textStyle14()
              .copyWith(fontSize: 16, color: const Color(0xff223263)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            //width: 343,
            height: 110,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: const Color(0xffEBF0FF),
                width: 1,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                    aspectRatio: 68 / 72,
                    child: Image.asset(
                      Assets.imagesFsImage1,
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  width: 17,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 155,
                          height: 36,
                          child: Text('Nike Air Zoom Pegasus 36 Miamis',
                              style: AppFonts.textStyle12()
                                  .copyWith(color: const Color(0xff223263))),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SvgPicture.asset(Assets.imagesredHeart),
                        const SizedBox(
                          width: 11,
                        ),
                        SvgPicture.asset(Assets.imagesTrash,color: const Color(0xff9098B1),),
                    
                      ],
                    ),
                    const SizedBox(
                          height: 18,
                        ),
                    Row(
                   crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('\$299,43',style: AppFonts.textStyle12().copyWith(
                      color: const Color(0xff40bfff)),),
                      const SizedBox(
                          width: 70,
                    
                        ),
                        const CustomIncreaseAndDecreaseRow()
                  ],
                )
                  ],
                ),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
