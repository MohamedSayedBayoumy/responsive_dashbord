import 'package:flutter/material.dart';

import '../../../core/utils/app_assets.dart';
import '../../../models/drawer_item.dart';
import 'custom_drawer_item.dart';
import 'user_info.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<DrawerItemMode> listItems = [
    const DrawerItemMode(avatar: Assets.imagesDashBorad, title: "Dashboard"),
    const DrawerItemMode(
        avatar: Assets.imagesTransaction, title: "My Transaction"),
    const DrawerItemMode(avatar: Assets.imagesGraph, title: "Statistics"),
    const DrawerItemMode(avatar: Assets.imagesWallet2, title: "Wallet Account"),
    const DrawerItemMode(
        avatar: Assets.imagesStatistics, title: "My Investments"),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: UserInfoWidget(
              avatar: Assets.imagesAvatar2,
              title: "Mohamed Sayed",
              subtitle: "Mobile Software Engineer",
            ),
          ),
        ),
        SliverList.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              if (currentIndex != index) {
                currentIndex = index;
                setState(() {});
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CustomDrawerItem(
                avatar: listItems[index].avatar,
                title: listItems[index].title,
                isActive: currentIndex == index,
              ),
            ),
          ),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              CustomDrawerItem(
                avatar: Assets.imagesSetting2,
                title: "Setting system",
                isActive: false,
              ),
              SizedBox(height: 10.0),
              CustomDrawerItem(
                avatar: Assets.imagesLogout,
                title: "Logout",
                isActive: false,
              ),
              SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
