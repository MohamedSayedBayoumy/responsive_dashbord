import 'package:flutter/material.dart';

import 'drawer/custom_drawer.dart';
import 'expenses_and_quick_invoice/expenses_and_quick_invoice_widget.dart';

class CustomDesktopView extends StatelessWidget {
  const CustomDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: AllExpanesAndQuickInvoiceWidget(),
        ),
      ],
    );
  }
}


