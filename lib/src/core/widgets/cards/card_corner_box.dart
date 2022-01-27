import 'package:cpea/src/core/theme/colors.dart';
import 'package:cpea/src/core/theme/consts.dart';
import 'package:flutter/material.dart';

class CardCornerBox extends StatelessWidget {
  const CardCornerBox.horizontal({
    Key? key,
    this.child,
    this.width,
    this.color,
    bool left = false,
    bool right = false,
    this.height,
  })  : topLeft = left,
        bottomLeft = left,
        topRight = right,
        bottomRight = right,
        super(key: key);

  const CardCornerBox.vertical({
    Key? key,
    this.child,
    this.width,
    this.color,
    bool top = false,
    bool bottom = false,
    this.height,
  })  : topLeft = top,
        bottomLeft = bottom,
        topRight = top,
        bottomRight = bottom,
        super(key: key);

  const CardCornerBox.only({
    Key? key,
    this.child,
    this.width,
    this.color,
    this.bottomLeft = false,
    this.bottomRight = false,
    this.topLeft = false,
    this.topRight = false,
    this.height,
  }) : super(key: key);

  const CardCornerBox.all({
    Key? key,
    this.child,
    this.width,
    this.color,
    this.bottomLeft = true,
    this.bottomRight = true,
    this.topLeft = true,
    this.topRight = true,
    this.height,
  }) : super(key: key);

  final Widget? child;
  final double? height;
  final double? width;
  final Color? color;

  final bool topLeft;
  final bool topRight;
  final bool bottomLeft;
  final bool bottomRight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft:
            topLeft ? const Radius.circular(cardBorderRadius) : Radius.zero,
        bottomLeft:
            bottomLeft ? const Radius.circular(cardBorderRadius) : Radius.zero,
        topRight:
            topRight ? const Radius.circular(cardBorderRadius) : Radius.zero,
        bottomRight:
            bottomRight ? const Radius.circular(cardBorderRadius) : Radius.zero,
      ),
      child: Container(
        height: height,
        width: width ?? defaultLeadingWidth,
        color: color ?? cardLeadingColor,
        child: child,
      ),
    );
  }
}
