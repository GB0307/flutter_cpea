import 'package:cpea/src/core/theme/consts.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    this.titlePadding = const EdgeInsets.symmetric(
      horizontal: horizontalPadding,
      vertical: doublePadding,
    ),
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: horizontalPadding),
    this.child,
    required this.title,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  final String title;
  final Widget? trailing;
  final EdgeInsets titlePadding;
  final EdgeInsets contentPadding;

  final Widget? child;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: titlePadding,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                trailing ?? const Icon(Icons.chevron_right_rounded),
              ],
            ),
          ),
        ),
        if (child != null)
          Padding(
            padding: contentPadding,
            child: child,
          ),
        if (child != null) const SizedBox(height: doublePadding),
        const Divider(height: 0),
      ],
    );
  }
}
