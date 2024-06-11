import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/models/card_model.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class ProfileCustomRow extends StatelessWidget {
  const ProfileCustomRow({super.key, required this.cardModel, this.ontap});
final CardModel cardModel;
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
        SvgPicture.asset(cardModel.image,
          fit: BoxFit.fill,
          //  color: colorIcon,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          cardModel.title,
          style:
              AppFonts.textStyle12().copyWith(color: const Color(0xff223263)),
        ),
        const SizedBox(
          width: 88,
        ),
        Text(cardModel.subtitle,
          style: AppFonts.textStyle12().copyWith(
            fontWeight: FontWeight.w400,
            color: const Color(0xff9098b1),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
         InkWell(
          onTap: ontap,
           child: const Icon(
                   Icons.arrow_forward_ios,
                   size: 24,
                   color: Color(
            0xff9098B1,
                   ),
                 ),
         ),
      ],
    );
  }
}
