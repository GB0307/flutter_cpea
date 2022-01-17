import 'package:flutter/material.dart';

class ClickableCard extends StatelessWidget {
  const ClickableCard({
    Key? key,
    this.onTap,
    this.margin,
    this.clip,
    this.elevation,
    this.height,
    this.width,
    this.child,
  }) : super(key: key);

  final void Function()? onTap;
  final EdgeInsets? margin;
  final Clip? clip;
  final double? elevation;
  final double? height;
  final double? width;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      clipBehavior: clip,
      elevation: elevation,
      child: SizedBox(
        height: height,
        width: width,
        child: InkWell(
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
