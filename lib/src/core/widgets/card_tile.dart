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
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    final h =
        isThreeLine ? defaultCardTileHeight : defaultCardTileThreeLineHeight;
    return ClickableCard(
      height: h,
      width: width ?? double.infinity,
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
              alignment: Alignment.topLeft,
              child: ListTile(
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
