
import 'package:flutter/material.dart';
import 'package:flutter_stepindicator/flutter_stepindicator.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_stepper.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';

class OredrDetailesView extends StatelessWidget {
  const OredrDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(context,
          title: 'My Orderes', color: const Color(0xff223263)),
      body: 
        const SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children:  [
         SizedBox(height: 16,),
CustomStepper(),
          
            

            ],
          ),
        ),
      ),
      );
  }
}
