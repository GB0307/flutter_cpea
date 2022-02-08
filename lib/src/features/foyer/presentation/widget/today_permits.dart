import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/layout/horizontal_limited_list.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:cpea/src/features/foyer/presentation/widget/permit_tile.dart';
import 'package:flutter/material.dart';

class TodayPermits extends StatelessWidget {
  const TodayPermits({Key? key, this.margin, this.onTap}) : super(key: key);

  final double tileHeight = defaultCardTileHeight;
  static const cardSpacing = halfPadding;

  final EdgeInsets? margin;

  final void Function(Permit permit)? onTap;

  @override
  Widget build(BuildContext context) {
    final permits = [];

    return HorizontalLimitedList.builder(
      itemCount: permits.length,
      accountCardMargins: true,
      builder: (context, index) => PermitTile(
        onTap: () => onTap?.call(permits[index]),
        permit: permits[index],
        margin: const EdgeInsets.symmetric(
          horizontal: cardSpacing,
          vertical: quarterPadding,
        ),
        width: 250,
      ),
    );
  }
}
