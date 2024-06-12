import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_category.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';

class AllCategoryView extends StatelessWidget {
  const AllCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'All Category'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 22,
            crossAxisSpacing: 12,
            axisDirection: AxisDirection.down,
            children: List.generate(
              20,
              (index) => const CustomCategoryItem(fontSize: 14,radius: 50,textHeight: 35,),
            ),
          ),
        ),
      ),
    );
  }
}
