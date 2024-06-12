import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/view/order_detailes_view.dart';
import 'package:technomasr_tasks/feature/home/widgets/my_orderes_items.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
          title: 'My Orderes', color: const Color(0xff223263)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
              children: List.generate(
                  2,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const OredrDetailesView(),
                                ),
                              );
                            },
                            child: const MyOrderesItems()),
                      ))),
        ),
      ),
    );
  }
}
