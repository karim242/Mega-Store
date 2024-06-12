import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/teotal_price_model.dart';
import 'package:technomasr_tasks/feature/home/widgets/text_and_price_row.dart';

class ShippingDetailesCard extends StatelessWidget {
  const ShippingDetailesCard({super.key});
  final List<TotalPriceModel> totalPriceList = const [
    TotalPriceModel(title: "Date Shipping", price: "January 16, 2020"),
    TotalPriceModel(title: "Shipping", price: "POS Reggular"),
    TotalPriceModel(title: "No. Resi", price: "000192848573"),
    TotalPriceModel(title: "Address", price: "2727 New  Owerri, Owerri, Imo State 78410"),
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
          
            children: [
            
               const SizedBox(
                height: 16,
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
                totalPrice: totalPriceList[2],
              ),
              const SizedBox(
                height: 12,
              ),
               TextAndPriceRow(
                totalPrice: totalPriceList[3],
              ),
             
            ],
          ),
        ));
  }
}
