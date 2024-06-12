import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_product_order_detailes.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_stepper.dart';
import 'package:technomasr_tasks/feature/home/widgets/shiping_detailes_card.dart';
import 'package:technomasr_tasks/feature/home/widgets/total_price_box.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';

class OredrDetailesView extends StatelessWidget {
  const OredrDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
          title: 'My Orderes', color: const Color(0xff223263)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const CustomStepper(),
              const SizedBox(height: 24),
              Text("Product",
                  style: AppFonts.textStyle14().copyWith(
                    color: const Color(0xff223263),
                  )),
              const SizedBox(height: 8),
              const CustomProductOrderDetailes(),
              const SizedBox(height: 24),
              Text("Shipping Details",
                  style: AppFonts.textStyle14().copyWith(
                    color: const Color(0xff223263),
                  )),
              const SizedBox(height: 12),
              const ShippingDetailesCard(),
              const SizedBox(height: 46),
              Text("Payment Details",
                  style: AppFonts.textStyle14().copyWith(
                    color: const Color(0xff223263),
                  )),
              const SizedBox(height: 12),
              const TotalPriceBox(),
                            const SizedBox(height: 13),

            ],
          ),
        ),
      ),
    );
  }
}
