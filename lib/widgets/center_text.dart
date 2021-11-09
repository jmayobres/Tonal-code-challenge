import 'package:flutter/material.dart';
import 'package:metrics_bubble/utils/styles.dart';

class CenterText extends StatelessWidget {
  final String label;
  final int weight;
  const CenterText({Key? key, required this.label, required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          label,
          style: labelTextStyle,
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          weight.toString(),
          style: weightTextStyle.copyWith(
            height: .7,
          ),
        ),
        Text(
          'lbs',
          style: unitTextStyle.copyWith(height: 1),
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }
}
