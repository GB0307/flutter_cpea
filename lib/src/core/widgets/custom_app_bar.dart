import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/card_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.backgroundColor,
    this.elevation = 0,
    this.buttonElevation,
    this.buttonColor,
    this.title,
    this.leading,
    this.trailing,
    this.onLeadingTap,
    this.onTrailingTap,
    this.iconColor,
    this.centerTitle,
  }) : super(key: key);

  const CustomAppBar.elevated({
    Key? key,
    this.backgroundColor,
    this.elevation = elevation2,
    this.buttonElevation = 0,
    this.buttonColor = Colors.transparent,
    this.title,
    this.leading,
    this.trailing,
    this.onLeadingTap,
    this.onTrailingTap,
    this.iconColor,
    this.centerTitle,
  }) : super(key: key);

  final bool? centerTitle;

  final double? iconSize = 32;
  final Color? iconColor;

  final Color? backgroundColor;
  final double? elevation;

  final double? buttonElevation;
  final Color? buttonColor;

  final Widget? title;

  final Widget? leading;
  final Widget? trailing;

  final VoidCallback? onLeadingTap, onTrailingTap;

  @override
  Widget build(BuildContext context) {
    final canPop = GoRouter.of(context).navigator?.canPop() ?? false;

    return AppBar(
      centerTitle: centerTitle,
      title: title,
      titleTextStyle: Theme.of(context).textTheme.headline6,
      leadingWidth: canPop || leading != null
          ? defaultCardButtonSize + horizontalPadding
          : quarterPadding,
      leading: Padding(
        padding: const EdgeInsets.only(left: doublePadding),
        child: leading != null
            ? Center(
                child: CardButton(
                  margin: EdgeInsets.zero,
                  child: leading,
                  onTap: onLeadingTap,
                  backgroundColor: buttonColor,
                  elevation: buttonElevation,
                  size: defaultCardButtonSize,
                  clip: Clip.antiAliasWithSaveLayer,
                ),
              )
            : canPop
                ? Center(
                    child: CardButton.icon(
                      iconSize: 32,
                      size: defaultCardButtonSize,
                      backgroundColor: buttonColor,
                      elevation: buttonElevation,
                      margin: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.chevron_left_rounded,
                      ),
                      onTap: onLeadingTap ?? () => context.pop(),
                    ),
                  )
                : null,
      ),
      actions: [
        if (trailing != null)
          Padding(
            padding: const EdgeInsets.only(
              right: horizontalPadding,
            ),
            child: Center(
              child: CardButton(
                size: defaultCardButtonSize + padding,
                child: trailing,
                margin: EdgeInsets.zero,
                onTap: onTrailingTap,
                elevation: buttonElevation,
                backgroundColor: buttonColor,
              ),
            ),
          ),
      ],
      elevation: elevation,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);
}
