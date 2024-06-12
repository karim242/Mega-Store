
import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class CustomProductOrderDetailes extends StatelessWidget {
  const CustomProductOrderDetailes({
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(2, (index) =>  const Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: OrdersDetailesItem(),
      ),)
      
    );
  }
}



class OrdersDetailesItem extends StatelessWidget {
  const OrdersDetailesItem({
    super.key,
  });

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
               
                  
                ],
              ),
              const SizedBox(
                    height: 18,
                  ),
              Row(
             crossAxisAlignment: CrossAxisAlignment.start,
    
            children: [
              Text('\$299,43',style: AppFonts.textStyle12().copyWith(
                color: const Color(0xff000000)),),
                const SizedBox(
                    width: 70,
              
                  ),
                
            ],
          )
            ],
          ),
    
          
        ],
      ),
    );
  }
}
