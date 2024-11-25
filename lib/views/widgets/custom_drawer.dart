import 'package:flutter/material.dart';
import 'package:responsive_web/core/utils/app_assets.dart';
import 'package:responsive_web/views/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfoWidget(
          avatar: AppAssets.imagesAvatar2,
          title: "Mohamed Sayed",
          subtitle: "Mobile Software Engineer",
        )
      ],
    );
  }
}
