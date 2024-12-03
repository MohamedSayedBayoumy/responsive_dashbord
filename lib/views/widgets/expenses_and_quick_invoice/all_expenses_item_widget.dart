import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_web/core/utils/app_styles.dart';

import '../../../core/utils/app_assets.dart';
import '../../../models/expenses_item_model.dart';

class AllExpensesItemWidget extends StatefulWidget {
  const AllExpensesItemWidget({super.key});

  @override
  State<AllExpensesItemWidget> createState() => _AllExpensesItemWidgetState();
}

class _AllExpensesItemWidgetState extends State<AllExpensesItemWidget> {
  List<ExpensesItemModel> expenses = [
    ExpensesItemModel(price: r"$20,129", title: "Balance", date: "April 2022"),
    ExpensesItemModel(price: r"$20,129", title: "Income", date: "April 2022"),
    ExpensesItemModel(price: r"$20,129", title: "Expenses", date: "April 2022"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: expenses.asMap().entries.map((e) {
        // ignore: unused_local_variable
        int index = e.key;
        final value = e.value;

        return Expanded(
          child: Container(
            padding: const EdgeInsetsDirectional.all(16),
            margin: index == 1
                ? const EdgeInsetsDirectional.symmetric(horizontal: 10.0)
                : null,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xfff1f1f1)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _itemHeaderWidget(),
                const SizedBox(height: 34),
                Text(
                  value.title,
                  style: AppStyles.styleSemiBold16,
                ),
                const SizedBox(height: 8),
                Text(
                  value.date,
                  style: AppStyles.styleRegluar14.copyWith(
                    color: const Color(0xffAAAAAA),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  value.price,
                  style: AppStyles.styleSemiBold20.copyWith(
                    color: const Color(0xff4EB7F2),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Row _itemHeaderWidget() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xfffafafa),
          ),
          child: SvgPicture.asset(
            Assets.imagesExpense,
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff064061),
            size: 24,
          ),
        )
      ],
    );
  }
}
