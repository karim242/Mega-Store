import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class StarRow extends StatelessWidget {
  const StarRow({super.key, required this.starSize});
  final double starSize;
  final List<String> starImages = const [
    Assets.imagesGoldenStar,
    Assets.imagesGoldenStar,
    Assets.imagesGoldenStar,
    Assets.imagesGoldenStar,
    Assets.imagesGrayStar,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        starImages.length,
        (index) => StarItem(
          image: starImages[index],
          starSize: starSize,
        ),
      ),
    );
  }
}

class StarBigRow extends StatelessWidget {
  const StarBigRow({super.key, required this.starSize});
  final double starSize;
  final List<String> starImages = const [
    Assets.imagesGoldenStar,
    Assets.imagesGoldenStar,
    Assets.imagesGoldenStar,
    Assets.imagesGoldenStar,
    Assets.imagesGrayStar,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        starImages.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: StarItem(
            image: starImages[index],
            starSize: starSize,
          ),
        ),
      ),
    );
  }
}

class StarItem extends StatelessWidget {
  const StarItem({super.key, required this.image, required this.starSize});
  final String image;
    final double starSize;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image,width: starSize,height: starSize,);
  }
}
