import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_ship_to_item.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

class ShipToView extends StatelessWidget {
  const ShipToView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: Color(0xffEBF0FF),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 16,
          color: Color(
            0xff9098B1,
          ),
        ),
        title: Text(
          'Ship To',
          textAlign: TextAlign.left,
          style: AppFonts.textStyle14()
              .copyWith(fontSize: 16, color: const Color(0xff223263)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.add, color: Color(0xff40BFFF)),
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const CustomShipToItem(name: 'Priscekila',borderColor: Color(0xff40BFFF),),
              const SizedBox(
                height: 16,
              ),
              const CustomShipToItem(name: 'Ahmad Khaidir',),
                const SizedBox(
                height: 70,
              ),
               CustomBotton(
                title: 'Next',
                onTap: (){
                 // Navigator.push(context, 
                //  MaterialPageRoute(builder: (context) => const ShipToView()));
                },
                backgroundColor:const Color( 0xffBA6400),)
            ],
          ),
        ),
      ),
    );
  }
}
