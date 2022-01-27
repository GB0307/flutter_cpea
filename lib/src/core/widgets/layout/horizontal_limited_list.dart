import 'dart:math';

import 'package:cpea/src/core/theme/consts.dart' as consts;
import 'package:flutter/material.dart';

typedef _Builder = Widget Function(BuildContext context, int index);

class HorizontalLimitedList extends StatelessWidget {
  const HorizontalLimitedList({
    Key? key,
    List<Widget> children = const [],
    this.padding,
    this.accountCardMargins = false,
    this.crossAxisAlignment,
  })  : _children = children,
        _itemCount = null,
        _builder = null,
        super(key: key);

  const HorizontalLimitedList.builder({
    Key? key,
    required int itemCount,
    required _Builder builder,
    this.padding,
    this.accountCardMargins = false,
    this.crossAxisAlignment,
  })  : _children = null,
        _itemCount = itemCount,
        _builder = builder,
        super(key: key);

  final int? _itemCount;
  final _Builder? _builder;

  final List<Widget>? _children;

  final EdgeInsets? padding;
  final bool accountCardMargins;

  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final _padding = EdgeInsets.only(
      top: max(
          (padding?.top ?? consts.padding) -
              (accountCardMargins ? 1 : 0) * consts.cardMargin,
          0),
      bottom: max(
          (padding?.bottom ?? consts.padding) -
              (accountCardMargins ? 1 : 0) * consts.cardMargin,
          0),
      left: max(
          (padding?.left ?? consts.horizontalPadding) -
              (accountCardMargins ? 1 : 0) * consts.cardMargin,
          0),
      right: max(
          (padding?.right ?? consts.horizontalPadding) -
              (accountCardMargins ? 1 : 0) * consts.cardMargin,
          0),
    );
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: _padding,
      child: Row(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: _children ??
            List.generate(_itemCount!, (index) => index)
                .map((i) => _builder!(context, i))
                .toList(),
      ),
    );
  }
}
