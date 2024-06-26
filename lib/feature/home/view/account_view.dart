import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/models/account_model.dart';
import 'package:technomasr_tasks/feature/home/view/address_view.dart';
import 'package:technomasr_tasks/feature/home/view/delet_account_view.dart';
import 'package:technomasr_tasks/feature/home/view/my_order_views.dart';
import 'package:technomasr_tasks/feature/home/view/profile_view.dart';
import 'package:technomasr_tasks/feature/home/widgets/appbar_without_arrow.dart';
import 'package:technomasr_tasks/feature/home/widgets/custom_account_list_title.dart';
import 'package:technomasr_tasks/utils/app_image.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBarWithoutArrow(title: 'Account'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: [
              const SizedBox(
                height: 16,
              ),
              CustomAccountListTile(
                  accounts: AccountModel(
                      title: 'Profile', icon: Assets.imagesgUserIcon,
                      ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileView()
                          ));
  })),
                
              
                CustomAccountListTile(
                    accounts: AccountModel(
                        title: 'My Orders ',
                         icon: Assets.imagesgmyOrderIcon,ontap: (){
                          Navigator.push(context, 
                          MaterialPageRoute(
                              builder: (context) => const MyOrderView(),),);
                         }
                         ),
                ),
                  
              CustomAccountListTile(
                  accounts: AccountModel(
                      title: 'Address', icon: Assets.imagesgLocationIcon,ontap: (){
                        Navigator.push(context, 
                        MaterialPageRoute(
                            builder: (context) => const AddressView(),),);

                      }),
                
              ),
               CustomAccountListTile(
                    accounts: AccountModel(
                        title: 'Log out ', icon: Assets.imagesgLogoutIcon,ontap: (){}),
              ),
              CustomAccountListTile(
                    colorIcon: Colors.red,
                    accounts: AccountModel(
                        title: 'Delete Account ', icon: Assets.imagesTrash,ontap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DeletAccountView()
                              ));
                        }),
                  ),
            ]),
          ),
        ));
  }
}
