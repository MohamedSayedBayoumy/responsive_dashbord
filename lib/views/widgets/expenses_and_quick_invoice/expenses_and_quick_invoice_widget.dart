// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_web/views/widgets/expenses_and_quick_invoice/all_expenses_widget.dart';


class AllExpanesAndQuickInvoiceWidget extends StatelessWidget {
  const AllExpanesAndQuickInvoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          AllExpensesWidget(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
