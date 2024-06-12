import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/profile_model.dart';
import 'package:technomasr_tasks/utils/widgets/custom_botton.dart';
import 'package:technomasr_tasks/feature/home/widgets/flashsale_product_row.dart';
import 'package:technomasr_tasks/feature/home/widgets/price_text_row.dart';
import 'package:technomasr_tasks/feature/home/widgets/review_product_row.dart';
import 'package:technomasr_tasks/feature/home/widgets/row_dot.dart';
import 'package:technomasr_tasks/feature/home/widgets/text_and_heart_row.dart';
import 'package:technomasr_tasks/utils/app_fonts.dart';
import 'package:technomasr_tasks/utils/app_image.dart';
import 'package:technomasr_tasks/utils/widgets/custom_appbar.dart';
import 'package:technomasr_tasks/utils/widgets/custom_review_listtile.dart';
import 'package:technomasr_tasks/utils/widgets/star_row.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });
  final ProfileModel profileModel = const ProfileModel(
    image: Assets.imagesProfilePicture,
    title: "James Lawson",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Product Name ....'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                  aspectRatio: 350 / 350,
                  child: Image.asset(
                    Assets.imagesproductDetailImage,
                    fit: BoxFit.fill,
                  )),
              const SizedBox(height: 21),
              const RowDot(),
              const SizedBox(height: 8),
              const TextAndHeartRow(),
              const SizedBox(height: 8),
              const StarRow(
                starSize: 16,
              ),
              const SizedBox(height: 16),
              const PriceTextRow(),
              const SizedBox(height: 22),
              Text(
                'Details',
                style: AppFonts.textStyle14()
                    .copyWith(color: const Color(0xffF57E2E)),
              ),
              const SizedBox(height: 13),
              SizedBox(
                width: 330,
                height: 88,
                child: Text(
                    "The Nike Air Max 270 React ENG combines full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                    style: AppFonts.textStyle12().copyWith(
                        color: const Color(0xff9098B1),
                        fontWeight: FontWeight.w400)),
              ),
              const SizedBox(height: 13),
              const ReviewProductRow(),
              const SizedBox(height: 16),
              CustomReviewListTileAndDetail(
                profile: profileModel,
              ),
              const SizedBox(height: 16),
              Text('You Might Also Like',
                  style: AppFonts.textStyle14().copyWith(
                    color: const Color(0xff223263),
                  )),
              const SizedBox(height: 12),
              const SizedBox(height: 230, child: FlashSaleProductRow()),
              const SizedBox(height: 50),
              const CustomBotton(
                title: 'Add To Cart',
                backgroundColor: Color(0xffBA6400),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
