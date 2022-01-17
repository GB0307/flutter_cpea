import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/snap_horizontal_list.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:cpea/src/features/foyer/presentation/widget/permit_tile.dart';
import 'package:flutter/material.dart';

final _permits = [
  Permit(
    authorizer: "Gabriel Borges",
    authorized: "João filho",
    startDate: DateTime.now().add(
      const Duration(hours: 1),
    ),
    endDate: DateTime.now().add(
      const Duration(hours: 2),
    ),
  ),
  Permit(
    authorizer: "Gabriel Borges",
    authorized: "Thaynara Brito",
    startDate: DateTime.now().add(
      const Duration(hours: 1),
    ),
    endDate: DateTime.now().add(
      const Duration(hours: 2),
    ),
  ),
  Permit(
    authorizer: "Gabriel Borges",
    authorized: "Roberto Santos",
    startDate: DateTime.now().add(
      const Duration(hours: 1),
    ),
    endDate: DateTime.now().add(
      const Duration(hours: 2),
    ),
  ),
];

class TodayPermits extends StatelessWidget {
  const TodayPermits({Key? key, this.margin}) : super(key: key);

  final double tileHeight = defaultCardTileHeight;
  static const cardSpacing = halfPadding;

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    final width =
        (MediaQuery.of(context).size.width - 2 * horizontalPadding) * 1;
    final permits = _permits;

    final height = tileHeight + 2 * quarterPadding;

    return SnapHorizontalList(
      margin: margin,
      height: height,
      itemWidth: width + 2 * cardSpacing,
      itemBuilder: (context, index) => PermitTile(
        permit: permits[index],
        margin: const EdgeInsets.symmetric(
          horizontal: cardSpacing,
          vertical: quarterPadding,
        ),
        width: width,
      ),
      itemCount: permits.length,
    );
  }
}
