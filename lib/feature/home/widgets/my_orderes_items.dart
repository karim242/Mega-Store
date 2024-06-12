import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/teotal_price_model.dart';
import 'package:technomasr_tasks/feature/home/widgets/text_and_price_row.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class MyOrderesItems extends StatelessWidget {
  const MyOrderesItems({super.key});
  final List<TotalPriceModel> totalPriceList = const [
    TotalPriceModel(title: "Order Status", price: "Shipping"),
    TotalPriceModel(title: "Items", price: "2 Items purchased"),
    TotalPriceModel(title: "Price", price: "\$299,43"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 201,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color(0xffEBF0FF),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
          
            children: [
            
              Text('LQNSU346JK',
                  style: AppFonts.textStyle14()
                      .copyWith(color: const Color(0xff223263))),
              const SizedBox(
                height: 12,
              ),
              Text('Order at E-comm : August 1, 2017',
                  style: AppFonts.textStyle12().copyWith(
                    color: const Color(0xff223263),
                    fontWeight: FontWeight.w400,
                  )),
                    const SizedBox(
                height: 12,
              ),
                   const DottedLine(
                dashColor: Color(0xffEBF0FF),
                lineThickness: 1,
              ),
              const SizedBox(
                height: 12,
              ),
              TextAndPriceRow(
                totalPrice: totalPriceList[0],
              ),
              const SizedBox(
                height: 12,
              ),
              TextAndPriceRow(
                totalPrice: totalPriceList[1],
              ),
              const SizedBox(
                height: 12,
              ),
              TextAndPriceRow(
                textColor: Colors.black,
                fontWeigh: FontWeight.w700,
                totalPrice: totalPriceList[2],
              ),
              const SizedBox(
                height: 12,
              ),
             
            ],
          ),
        ));
  }
}
