import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/view/add_address_view.dart';
import 'package:technomasr_tasks/feature/home/view/delete_adress_view.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_ship_to_item.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
          title: 'Address', color: AppColors.primaryColor),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              CustomShipToItem(
                name: 'Priscekila',
                borderColor: const Color(0xff40BFFF),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeleteAddressView()));
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomShipToItem(
                name: 'Ahmad Khaidir',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeleteAddressView()));
                },
              ),
              const SizedBox(
                height: 70,
              ),
              CustomBotton(
                title: 'Add Address',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddAddressView()));
                },
                backgroundColor: AppColors.brownColor,
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
