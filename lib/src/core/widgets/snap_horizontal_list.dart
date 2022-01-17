import 'package:cpea/src/core/theme/consts.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

typedef _ItemBuilder = Widget Function(BuildContext context, int index);

class SnapHorizontalList extends StatelessWidget {
  const SnapHorizontalList({
    Key? key,
    this.height,
    this.margin = const EdgeInsets.symmetric(vertical: doublePadding),
    required this.itemWidth,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final double? height;
  final EdgeInsets? margin;
  final double itemWidth;

  final _ItemBuilder itemBuilder;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      child: ScrollSnapList(
        itemSize: itemWidth,
        itemBuilder: (context, index) => SizedBox(
          width: itemWidth,
          child: itemBuilder(context, index),
        ),
        curve: Curves.easeInOut,
        duration: 200,
        itemCount: itemCount,
        onItemFocus: (_) {},
      ),
    );
  }
}
