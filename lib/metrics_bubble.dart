library metrics_bubble;

import 'package:flutter/material.dart';
import 'package:metrics_bubble/utils/styles.dart';
import 'package:metrics_bubble/widgets/center_text.dart';
import 'package:metrics_bubble/widgets/rounded_graph.dart';

class MetricsBubble extends StatefulWidget {
  final String label;
  final int weight;
  const MetricsBubble({Key? key, required this.label, required this.weight})
      : super(key: key);

  @override
  _MetricsBubbleState createState() => _MetricsBubbleState();
}

class _MetricsBubbleState extends State<MetricsBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(
            maxWidth: bubbleDiameter, maxHeight: bubbleDiameter),
        width: bubbleDiameter,
        height: bubbleDiameter,
        decoration: bubbleBoxDecoration,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.antiAlias,
          children: [
            const Align(
              alignment: Alignment.bottomCenter,
              child: RoundedGraph(),
            ),
            Align(
                alignment: Alignment.center,
                child: CenterText(
                  label: widget.label,
                  weight: widget.weight,
                )),
          ],
        ));
  }
}
