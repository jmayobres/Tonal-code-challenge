import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metrics_bubble/utils/styles.dart';

class RoundedGraph extends StatelessWidget {
  const RoundedGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(0), bottom: Radius.circular(bubbleDiameter / 2)),
      child: SizedBox(
        height: bubbleDiameter / 3,
        width: bubbleDiameter / 1.1,
        child: SvgPicture.asset(
          'packages/metrics_bubble/assets/images/graph.svg',
          semanticsLabel: 'graph',
          clipBehavior: Clip.antiAlias,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
