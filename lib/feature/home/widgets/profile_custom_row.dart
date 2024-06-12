import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/models/row_model.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';




class ProfileCustomRow extends StatelessWidget {
  const ProfileCustomRow({super.key, required this.rowModel,});
final RowModel rowModel;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
          onTap: rowModel.ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          SvgPicture.asset(rowModel.image,
            fit: BoxFit.fill,
            //  color: colorIcon,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            rowModel.title,
            style:
                AppFonts.textStyle12().copyWith(color: const Color(0xff223263)),
          ),
         const Flexible(
            child:  SizedBox(
              width: 88,
            ),
          ),
          Text(rowModel.subtitle,
            style: AppFonts.textStyle12().copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xff9098b1),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          
             const Icon(
                     Icons.arrow_forward_ios,
                     size: 24,
                     color: Color(
              0xff9098B1,
                    
                   ),
           ),
        ],
      ),
    );
  }
}
