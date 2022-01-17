import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/card_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CPEAAppBar extends StatelessWidget {
  const CPEAAppBar({
    Key? key,
    this.titleText,
    this.trailing,
    this.onTap,
    this.autoMargin = true,
    this.leading,
    this.centerTitle = true,
    this.title,
  }) : super(key: key);

  final Widget? leading;
  final Widget? trailing;
  final void Function()? onTap;
  final bool autoMargin;
  final Widget? title;
  final String? titleText;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Theme(
        data: theme.copyWith(
          cardTheme: theme.cardTheme.copyWith(margin: EdgeInsets.zero),
        ),
        child: Container(
          margin: autoMargin
              ? const EdgeInsets.symmetric(
                  vertical: doublePadding,
                  horizontal: horizontalPadding,
                )
              : const EdgeInsets.symmetric(vertical: doublePadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leading ??
                  CardButton.icon(
                    icon: const Icon(Icons.chevron_left_rounded),
                    onTap: () => context.pop(),
                  ),
              const SizedBox(width: padding),
              Expanded(
                child: Align(
                  alignment:
                      centerTitle ? Alignment.center : Alignment.centerLeft,
                  child: title ??
                      Text(
                        titleText ?? "",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                ),
              ),
              const SizedBox(width: padding),
              SizedBox(
                child: trailing,
                width: defaultCardButtonSize,
              )
            ],
          ),
        ),
      ),
    );
  }
}
