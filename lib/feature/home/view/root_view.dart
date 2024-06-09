import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technomasr_tasks/feature/home/view/account_view.dart';
import 'package:technomasr_tasks/feature/home/view/favorite_view.dart';
import 'package:technomasr_tasks/feature/home/view/home_view.dart';
import 'package:technomasr_tasks/feature/home/view/offer_view.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
   int currentScreen = 0;
  bool isloadingProds = true;

  late PageController controller;
  List<Widget> screens = const [
    HomeView(),
    AccountView(),
    OfferView(),
    FavoriteView(),
  ];
   @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentScreen);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreen,
        indicatorColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        height: kBottomNavigationBarHeight,
        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
        destinations: [
          
           NavigationDestination(
            selectedIcon: SvgPicture.asset(Assets.imagesHome),
            icon:SvgPicture.asset(Assets.imagesHome,color: const Color(0xff9098B1),),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(Assets.imagesProfileIcon,color: const Color(0xff50555C)),
            icon:SvgPicture.asset(Assets.imagesProfileIcon),
            label: 'Account',
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(Assets.imagesOffer,color: const Color(0xff50555C)),
            icon:SvgPicture.asset(Assets.imagesOffer),
            label: 'Offer',
          ),
          NavigationDestination(
            selectedIcon:  SvgPicture.asset(Assets.imagesVector ,color: const Color(0xff50555C)),
            icon:SvgPicture.asset(Assets.imagesVector),
            label: 'Favorite',
          ),
        
        ],
      ),
    );
  }
}