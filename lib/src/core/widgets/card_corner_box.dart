import 'package:cpea/src/core/theme/colors.dart';
import 'package:cpea/src/core/theme/consts.dart';
import 'package:flutter/material.dart';

class CardCornerBox extends StatelessWidget {
  const CardCornerBox({
    Key? key,
    this.child,
    this.width,
    this.color,
    this.left = false,
    this.right = false,
  }) : super(key: key);

  final Widget? child;
  final double? width;
  final Color? color;

  final bool left;
  final bool right;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(
        left: left ? const Radius.circular(cardBorderRadius) : Radius.zero,
        right: right ? const Radius.circular(cardBorderRadius) : Radius.zero,
      ),
      child: Container(
        height: double.infinity,
        width: width ?? defaultLeadingWidth,
        color: color ?? cardLeadingColor,
        child: child,
      ),
    );
  }
}
