import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileWidget,
    required this.tableWidget,
    required this.desktopWidget,
  });

  final WidgetBuilder mobileWidget, tableWidget, desktopWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileWidget(context);
        } else if (constraints.maxWidth < 900) {
          return tableWidget(context);
        } else {
          return desktopWidget(context);
        }
      },
    );
  }
}
