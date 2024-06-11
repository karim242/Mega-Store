import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/teotal_price_model.dart';
import 'package:technomasr_tasks/feature/home/widgets/text_and_price_row.dart';
import 'package:technomasr_tasks/feature/home/widgets/total_and_price_row.dart';
import 'package:dotted_line/dotted_line.dart';

class TotalPriceBox extends StatelessWidget {
  const TotalPriceBox({super.key});
  final List<TotalPriceModel> totalPriceList = const [
    TotalPriceModel(title: "Items (3)", price: "\$598.86"),
    TotalPriceModel(title: "Shipping", price: "\$40.00"),
    TotalPriceModel(title: "Import charges", price: "\$128.00"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 164,
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
            children: [
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
              const DottedLine(
                dashColor: Color(0xffEBF0FF),
                lineThickness: 1,
              ),
              const SizedBox(
                height: 12,
              ),
              const TotandPriceRow()
            ],
          ),
        ));
  }
}


