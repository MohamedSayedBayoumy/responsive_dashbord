import 'package:flutter/material.dart';

import 'all_expenses_header_widget.dart';
import 'all_expenses_item_widget.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpenseHeaderWidget(),
          SizedBox(height: 18),
          AllExpensesItemWidget()
        ],
      ),
    );
  }
}
