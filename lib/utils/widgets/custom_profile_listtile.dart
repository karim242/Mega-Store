import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/card_model.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({super.key, required this.cardModel, this.onTap});
final CardModel cardModel;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:onTap,
      child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 24,
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      cardModel.image ,
                      fit: BoxFit.fill,
                    )),
              ),
              title: Text(
                cardModel.title,
                style: AppFonts.textStyle14()
                    .copyWith(color: const Color(0xff223263)),
              ),
              subtitle: 
              Text(cardModel.subtitle,
              style: AppFonts.textStyle12().copyWith(
                color: const Color(0xff9098B1),
                fontWeight: FontWeight.w400,
              ),
              )
      
              
              ),
    );
  }
}