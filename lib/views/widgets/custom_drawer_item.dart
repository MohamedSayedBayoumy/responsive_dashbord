import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_web/core/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.avatar,
    required this.title,
    required this.isActive,
  });

  final String avatar, title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(avatar),
      title: Text(
        title,
        style:
            isActive == true ? AppStyles.styleBold16 : AppStyles.styleRegular16,
      ),
      trailing: isActive == true
          ? Container(
              width: 3,
              decoration: BoxDecoration(
                color: const Color(0xff4EB7F2),
                borderRadius: BorderRadius.circular(5.0),
              ),
            )
          : null,
    );
  }
}
