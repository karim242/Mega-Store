
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_increase_decrese_row.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({
    super.key, required this.heartIconString,  this.ontap,
  });
final String heartIconString;
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 343,
      height: 114,
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
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    height: 36,
                    child: Text('Nike Air Zoom Pegasus 36 Miamis',
                        style: AppFonts.textStyle12()
                            .copyWith(color: const Color(0xff223263))),
                  ),
                  
                  InkWell(
                    onTap: ontap,
                    child: SvgPicture.asset(heartIconString, )),
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
                    width: 50,
              
                  ),
                  const CustomIncreaseAndDecreaseRow()
            ],
          )
            ],
          ),
    
          
        ],
      ),
    );
  }
}
