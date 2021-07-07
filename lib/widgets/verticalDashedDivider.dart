
import 'package:flutter/material.dart';

class VerticalDashedDivider extends StatelessWidget {
  final double? space;
  final double? length;
  final double? thickness;
  final Color? color;
  final double? indent;
  final double? endIndent;

  const VerticalDashedDivider(
      {Key? key,
        this.space,
        this.length,
        this.thickness,
        this.color,
        this.indent,
        this.endIndent})
      : assert(space == null || space >= 0.0),
        assert(length == null || length >= 0.0),
        assert(thickness == null || thickness >= 0.0),
        assert(indent == null || indent >= 0.0),
        assert(endIndent == null || endIndent >= 0.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final DividerThemeData dividerTheme = DividerTheme.of(context);
    final double space = this.space ?? dividerTheme.space ?? 10.0;
    final double length = this.length ?? 5.0;
    final double thickness = this.thickness ?? dividerTheme.thickness ?? 1.0;
    final Color color =
        this.color ?? dividerTheme.color ?? Theme.of(context).dividerColor;
    final double indent = this.indent ?? dividerTheme.indent ?? 0.0;
    final double endIndent = this.endIndent ?? dividerTheme.endIndent ?? 0.0;

    return Padding(
      padding: EdgeInsets.only(top: indent, bottom: endIndent),
      child: Container(
        width: space,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final boxHeight = constraints.constrainHeight();
            final dashThickness = thickness;
            final dashLength = length;
            final dashCount = (boxHeight / (2 * dashLength)).floor();
            return Flex(
              children: List.generate(dashCount, (_) {
                return SizedBox(
                  width: dashThickness,
                  height: dashLength,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: color),
                  ),
                );
              }),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.vertical,
            );
          },
        ),
      ),
    );
  }
}