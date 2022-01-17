import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/clickable_card.dart';
import 'package:flutter/material.dart';

//TODO: ADD TEXT CARD BUTTON
class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    this.child,
    this.size = defaultCardButtonSize,
    this.onTap,
    this.elevation,
    this.clip = Clip.antiAliasWithSaveLayer,
    this.margin,
  })  : image = null,
        errorBuilder = null,
        loadingBuilder = null,
        fit = BoxFit.cover,
        iconColor = null,
        iconSize = null,
        super(key: key);

  const CardButton.image({
    Key? key,
    this.size = defaultCardButtonSize,
    this.onTap,
    this.elevation,
    this.clip = Clip.antiAliasWithSaveLayer,
    required this.image,
    this.fit = BoxFit.cover,
    this.errorBuilder,
    this.loadingBuilder,
    this.margin,
  })  : child = null,
        iconColor = null,
        iconSize = null,
        super(key: key);

  const CardButton.icon({
    Key? key,
    this.size = defaultCardButtonSize,
    this.onTap,
    this.elevation,
    required Icon icon,
    this.iconColor,
    this.iconSize = 32,
    this.clip = Clip.antiAliasWithSaveLayer,
    this.margin,
  })  : image = null,
        fit = BoxFit.cover,
        errorBuilder = null,
        child = icon,
        loadingBuilder = null,
        super(key: key);

  // DEFAULT VARIABLES
  final Widget? child;
  final double size;
  final void Function()? onTap;
  final double? elevation;
  final Clip? clip;
  final EdgeInsets? margin;

  // IMAGE CARD VARIABLES
  final ImageProvider? image;
  final BoxFit? fit;
  final Widget Function(BuildContext ctx, Object error, StackTrace? trace)?
      errorBuilder;
  final Widget Function(BuildContext ctx, Widget child, ImageChunkEvent? event)?
      loadingBuilder;

  // ICON VARIABLES
  final double? iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final c = image != null
        ? Image(
            image: image!,
            fit: fit,
            errorBuilder: errorBuilder,
            loadingBuilder: loadingBuilder,
          )
        : child != null
            ? Theme(
                data: theme.copyWith(
                  iconTheme: theme.iconTheme.copyWith(
                    size: iconSize,
                    color: iconColor ?? theme.primaryColor,
                  ),
                ),
                child: child!,
              )
            : null;

    return ClickableCard(
      child: SizedBox.expand(
        child: c,
      ),
      margin: margin,
      clip: clip,
      elevation: elevation,
      height: size,
      width: size,
      onTap: onTap,
    );
  }
}
