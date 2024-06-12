import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/widgets/custom_gridview.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
         shape: const RoundedRectangleBorder(
      side: BorderSide(width: 1.5,
       color: Color(0xffEBF0FF),
       ),
     
      ),
    
      title: Text(
        'Search Results ',
        textAlign: TextAlign.left,
        style: AppFonts.textStyle16Cairo()
            .copyWith( color: const Color(0xff000000)),
      ),
    ),
    body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
        child:  SingleChildScrollView(child: CustomGridView()),
      ),
    );
  }
}