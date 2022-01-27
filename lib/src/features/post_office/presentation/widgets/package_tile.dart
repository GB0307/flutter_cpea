import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/cards/card_corner_box.dart';
import 'package:cpea/src/core/widgets/cards/card_tile.dart';
import 'package:cpea/src/core/widgets/content/date_indicator.dart';
import 'package:cpea/src/features/post_office/domain/entities/package.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PackageTile extends StatelessWidget {
  const PackageTile(
      {Key? key, this.onTap, required this.package, this.width, this.margin})
      : super(key: key);

  final void Function()? onTap;
  final Package package;

  final double? width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return CardTile.dense(
      onTap: onTap,
      width: double.infinity,
      title: package.recipient,
      margin: EdgeInsets.zero,
      leading: CardCornerBox.horizontal(
        left: true,
        width: 64,
        child: DateIndicator(
          date: package.receivedAt,
          includeDayName: false,
        ),
      ),
    );
  }
}
