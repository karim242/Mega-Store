import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_colors.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class ShipToBottonRow extends StatelessWidget {
  const ShipToBottonRow({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const EditButton(),
        const SizedBox(
          width: 24,
        ),
        InkWell(
          onTap: onTap,
          child: SvgPicture.asset(
            Assets.imagesTrash,
            color: AppColors.scondaryColor,
          ),
        ),
      ],
    );
  }
}

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77,
      height: 57,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff50555C),
          foregroundColor: Colors.white,
          elevation: 5,
          shadowColor: const Color(0xff40BFFF),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Edit',
          style: AppFonts.textStyle14(),
        ),
      ),
    );
  }
}
