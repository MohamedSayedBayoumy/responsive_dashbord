import 'package:flutter/material.dart';
import 'package:responsive_web/views/widgets/custom_drawer.dart';

class CustomDesktopView extends StatelessWidget {
  const CustomDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}
