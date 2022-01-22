import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/card_corner_box.dart';
import 'package:cpea/src/core/widgets/card_tile.dart';
import 'package:cpea/src/core/widgets/date_indicator.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:flutter/material.dart';

class PermitTile extends StatelessWidget {
  const PermitTile(
      {Key? key, this.onTap, required this.permit, this.width, this.margin})
      : super(key: key);

  final void Function()? onTap;
  final Permit permit;

  final double? width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return CardTile(
      onTap: onTap,
      width: width,
      title: permit.authorized,
      subtitle: "Liberado até as 18:00",
      margin: margin,
      leading: CardCornerBox.horizontal(
        left: true,
        child: DateIndicator(date: DateTime.now()),
      ),
    );
  }
}
