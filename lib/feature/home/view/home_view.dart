import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technomasr_tasks/feature/home/widgets/appbar_text_field.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Align(alignment: Alignment.center, child:  AppBarTextField()),
        actions: [
         SvgPicture.asset( Assets.imagesCart),
        ],
      ),
    
    );
  }
}