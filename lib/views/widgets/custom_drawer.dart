import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import '../../models/drawer_item.dart';
import 'custom_drawer_item.dart';
import 'user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemMode> listItems = [
    DrawerItemMode(avatar: Assets.imagesDashBorad, title: "Dashboard"),
    DrawerItemMode(avatar: Assets.imagesTransaction, title: "My Transaction"),
    DrawerItemMode(avatar: Assets.imagesGraph, title: "Statistics"),
    DrawerItemMode(avatar: Assets.imagesWallet2, title: "Wallet Account"),
    DrawerItemMode(avatar: Assets.imagesStatistics, title: "My Investments"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: UserInfoWidget(
            avatar: Assets.imagesAvatar2,
            title: "Mohamed Sayed",
            subtitle: "Mobile Software Engineer",
          ),
        ),
        ListView.builder(
          itemCount: listItems.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomDrawerItem(
              avatar: listItems[index].avatar,
              title: listItems[index].title,
            ),
          ),
        ),
      ],
    );
  }
}
