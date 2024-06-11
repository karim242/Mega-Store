import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/view/ship_to_view.dart';
import 'package:technomasr_tasks/feature/home/widgets/copon_row.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_cart_item.dart';
import 'package:technomasr_tasks/feature/home/widgets/total_price_box.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  bool ontap1 = false;
  bool ontap2 = false;

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
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              CustomCartItem(
                ontap: () {
                  setState(() {
                    ontap1 = !ontap1;
                  });
                },
                heartIconString:
                    ontap1 ? Assets.imagesredHeart : Assets.imagesgrayHeartIcon,
                // gray: Color(0xff9098B1),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomCartItem(
                ontap: () {
                  setState(() {
                    ontap2 = !ontap2;
                  });
                },
                heartIconString:
                    ontap2 ? Assets.imagesredHeart : Assets.imagesgrayHeartIcon,
                // gray: Color(0xff9098B1),
              ),
              const SizedBox(
                height: 32,
              ),
              const CuponRoW(),
               const SizedBox(
                height: 16,
              ),
              const TotalPriceBox(),
               const SizedBox(
                height: 16,
              ),
                CustomBotton(
                title: ' Checkout',
                onTap: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const ShipToView()));
                },
                backgroundColor:const Color( 0xffBA6400),)
            ],
          ),
        ),
      ),
    );
  }
}
