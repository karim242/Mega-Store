import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/view/write_review_view.dart';
import 'package:technomasr_tasks/feature/home/widgets/review_list_view.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,title: '5 Review'),
      body:  Padding(
        padding:const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
        const  ReviewListView(),
          const  SizedBox(height: 50),
            CustomBotton(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const WriteReviewView()));
              },
              title: 'Write Review',
              backgroundColor:const Color(0xffBA6400),
            ),
           const  SizedBox(height: 10),
          ]),
        ),
      ),
    );
  }
}
