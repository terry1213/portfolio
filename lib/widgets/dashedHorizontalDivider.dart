
import 'package:flutter/material.dart';

class DashedHorizontalDivider extends StatelessWidget {
  final double length;
  final double thickness;
  final Color color;
  final EdgeInsets padding;

  const DashedHorizontalDivider({this.length = 5.0, this.thickness = 1.0, this.color, this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = constraints.constrainWidth();
          final dashWidth = length;
          final dashHeight = thickness;
          final dashCount = (boxWidth / (2 * dashWidth)).floor();
          return Flex(
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color == null ? Theme.of(context).dividerColor : color),
                ),
              );
            }),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
          );
        },
      ),
    );
  }
}