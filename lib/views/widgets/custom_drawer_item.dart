import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_web/core/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.avatar,
    required this.title,
  });

  final String avatar, title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(avatar),
      title: Text(
        title,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}
