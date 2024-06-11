import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';
import 'package:technomasr_tasks/utils/widgets/custom_gridview.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,title: 'Category  Name '),
      body:const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
        child:  SingleChildScrollView(child: CusromGridView()),
      ),
    );
  }
}



