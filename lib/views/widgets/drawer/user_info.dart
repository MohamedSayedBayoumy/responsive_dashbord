import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_styles.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
    required this.avatar,
    required this.title,
    required this.subtitle,
  });

  final String avatar, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesFrame),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegluar12,
        ),
      ),
    );
  }
}
