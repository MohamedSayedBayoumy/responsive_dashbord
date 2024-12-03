import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class AllExpenseHeaderWidget extends StatelessWidget {
  const AllExpenseHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xfff1f1f1)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Text(
                "Monthly",
                style: AppStyles.styleMedium16,
              ),
              const SizedBox(width: 18),
              Transform.rotate(
                  angle: -1.57079633,
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color(0xff064061),
                    size: 24,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
