import 'package:flutter/material.dart';

import '../widgets/adaptive_layout_widget.dart';
import '../widgets/_custom_desktop_view.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileWidget: (context) => const Center(),
        tableWidget: (context) => const Center(),
        desktopWidget: (context) => const CustomDesktopView(),
      ),
    );
  }
}
