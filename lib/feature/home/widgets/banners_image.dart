import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class BannersImage extends StatelessWidget {
  const BannersImage({super.key});
  static List<String> bannersImage = [
        Assets.imagesFirst,
    Assets.imagesFirst,
    Assets.imagesFirst,
    Assets.imagesFirst,
    Assets.imagesFirst,


  ];
  @override
  Widget build(BuildContext context) {
    return     SizedBox(
                height: 139,
                width: 353,
                child: Swiper(
                 autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      bannersImage[index],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: bannersImage.length,
                  pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Color(0xFF898A8D),
                        activeColor: Color(0xff50555C),
                      )),
                ),
              );
  }
}