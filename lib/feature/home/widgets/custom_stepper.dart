
import 'package:flutter/material.dart';
import 'package:flutter_stepindicator/flutter_stepindicator.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterStepIndicator(
                    height: 26,
                  positiveColor : Color(0xff087da9),
                     negativeColor: Color(0xffFFFFFF),
                   // borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                   paddingLine:EdgeInsets.all(1),
                    onChange: (i){},
                    page: 3,
               
                 list: const[
                Step(title: Text('Packing'), 
                content: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xff087da9),
                  child: Icon(Icons.check,color: Colors.white,)
                ),
                ),
                  Step(title: Text('Shipping'), 
                content: CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(0xff087da9),
                  child: Icon(Icons.check,color: Colors.white,)
                ),
                ),  Step(title: Text('Arriving'), 
                content: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xff087da9),
                  child: Icon(Icons.check,color: Colors.white,)
                ),
                ),
                  Step(title: Text('Success'), 
                content: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xffFFFFFF),
                  child: Icon(Icons.check,color: Colors.white,)
                ),
                )
              ]);
  }
}