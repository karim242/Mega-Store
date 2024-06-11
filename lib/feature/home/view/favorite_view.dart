import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/widgets/favorite_body.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context,title: 'Favorite List '),
        body: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
             child:   FavouritBody(),
            
          ),
        ));
  }
}
