import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context,
            title: 'Add Address', color: AppColors.primaryColor),
        body:  SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all( 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AddAddressTextAndField(
                    title: 'Country or region',
                  ),
                    const SizedBox(height: 24),
                  const AddAddressTextAndField(
                    title: 'Street Address',
                  ),
                    const SizedBox(height: 24),

                  const AddAddressTextAndField(
                    title: 'Street Address 2 (Optional)',
                  ),
                    const SizedBox(height: 24),

                  const AddAddressTextAndField(
                    title: 'State/Province/Region',
                  ),
                    const SizedBox(height: 24),

                  const AddAddressTextAndField(
                    title: 'City',
                  ),
                    const SizedBox(height: 24),

                  const AddAddressTextAndField(
                    title: 'Zip Code',
                  ),
                    const SizedBox(height: 24),

                  const AddAddressTextAndField(
                    title: 'Phone Number',
                  ),
                    const SizedBox(height: 54),
                     CustomBotton(
                title: 'Add Address',
                onTap: (){
                 // Navigator.push(context, 
                //  MaterialPageRoute(builder: (context) => const AddAddressView()));
                },
                backgroundColor: AppColors.brownColor,)

                ],
              )),
        ));
  }
}

class AddAddressTextAndField extends StatelessWidget {
  const AddAddressTextAndField({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.textStyle14().copyWith(color: AppColors.primaryColor),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 48,
          width: 343,
          child: TextField(
              decoration: InputDecoration(
            hintStyle: AppFonts.textStyle12().copyWith(
              color: AppColors.scondaryColor,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: borderBuilder(),
            focusedBorder: foucsborderBuilder(),
          )),
        ),
      ],
    );
  }

  OutlineInputBorder borderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color(0xffEBF0FF),
      ),
    );
  }

  OutlineInputBorder foucsborderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color(0xff40BFFF),
      ),
    );
  }
}
