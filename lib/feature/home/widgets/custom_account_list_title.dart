
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/feature/home/models/account_model.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';

class CustomAccountListTile extends StatelessWidget {
  const CustomAccountListTile({
    super.key,
    required this.accounts, this.colorIcon,
  });
  final AccountModel accounts;
  final Color? colorIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        accounts.icon,
        fit: BoxFit.fill,
        color: colorIcon,
      ),
      title: Text(
        accounts.title,
        style: AppFonts.textStyle12().copyWith(color: const Color(0xff223263)),
      ),
    );
  }
}
