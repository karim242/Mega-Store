import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technomasr_tasks/feature/home/widgets/banners_image.dart';
import 'package:technomasr_tasks/feature/home/widgets/flashsale_product_row.dart';
import 'package:technomasr_tasks/feature/home/widgets/home_appbar_row.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
             
                  child:   Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    const SizedBox(
                      height: 6,
                    ),
                    const HomeAppBarRow(),
                    const SizedBox(
                      height: 14,
                    ),
                    const BannersImage(),
                    const SizedBox(
                      height: 14,
                    ),
                    /////////////////////// ///for the Category
                    const SizedBox(
                      height: 19,
                    ),
                    Image.asset(
                      Assets.imagesSecond,
                      fit: BoxFit.fill,
                      height: 86,
                      width: 353,
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Text(
                      'Flash Sale',
                      style: AppFonts.textStyle14().copyWith(
                        color: const Color(0xffED1C24),
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            offset: const Offset(0.0, 4),
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.25),
                          ),
                        ],
                      ),
                    ),
                 const   SizedBox(height: 230, child: const FlashSaleProductRow()),
                 const SizedBox(
                      height: 28,
                    ),
                    Text("You May Like ",style: AppFonts.textStyle14().copyWith(
                      color: const Color(0xff50555C),
                      
                    ),)
                  ]
            ),
            ),
        ),
        
        //  ] ),
      //    ),
        
      ),
    );
  }
}
