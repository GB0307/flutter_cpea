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
    this.color,
  }) : super(key: key);

  final void Function()? onTap;
  final EdgeInsets? margin;
  final Clip? clip;
  final double? elevation;
  final double? height;
  final double? width;
  final Color? color;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: margin,
      clipBehavior: clip ?? Clip.antiAliasWithSaveLayer,
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
