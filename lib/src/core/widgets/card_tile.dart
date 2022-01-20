import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/clickable_card.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    Key? key,
    this.leading,
    this.trailing,
    this.height,
    this.width,
    this.title,
    this.subtitle,
    this.isThreeLine = false,
    this.onTap,
    this.margin,
    this.clip,
    this.elevation,
    this.color,
  })  : dense = false,
        super(key: key);

  const CardTile.dense({
    Key? key,
    this.leading,
    this.trailing,
    this.height,
    this.width,
    this.title,
    this.onTap,
    this.margin,
    this.clip,
    this.elevation,
    this.color,
  })  : dense = true,
        subtitle = null,
        isThreeLine = false,
        super(key: key);

  final Widget? leading;
  final Widget? trailing;
  final double? height;
  final double? width;

  final String? title;
  final String? subtitle;
  final bool isThreeLine;

  final void Function()? onTap;

  final EdgeInsets? margin;
  final Clip? clip;
  final double? elevation;

  final bool dense;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final h = dense
        ? defaultCardTileDenseHeight
        : (!isThreeLine
            ? defaultCardTileHeight
            : defaultCardTileThreeLineHeight);
    return ClickableCard(
      height: height ?? h,
      width: width ?? double.infinity,
      color: color,
      margin: margin ??
          const EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: halfPadding,
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (leading != null) leading!,
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: dense
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: horizontalPadding),
                      child: Text(
                        title ?? "",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    )
                  : ListTile(
                      title: title != null ? Text(title!) : null,
                      subtitle: subtitle != null
                          ? Text(
                              subtitle!,
                              maxLines: isThreeLine ? 2 : 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          : null,
                      isThreeLine: isThreeLine,
                    ),
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
      clip: clip,
      elevation: elevation,
      onTap: onTap,
    );
  }
}
