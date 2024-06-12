
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/view/cart_view.dart';
import 'package:technomasr_tasks/feature/home/widgets/appbar_text_field.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class HomeAppBarRow extends StatelessWidget {
  const HomeAppBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: AppBarTextField(),
        ),
        
        InkWell(
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const CartView()));
          },
          child: SvgPicture.asset(Assets.imagesCart)),
      
      ],
    );
  }
}
