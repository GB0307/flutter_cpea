import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/card_button.dart';
import 'package:cpea/src/core/widgets/clickable_card.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
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
  const TodayPermits({Key? key}) : super(key: key);

  final double buttonSize = 70;
  static const cardSpacing = halfPadding;

  @override
  Widget build(BuildContext context) {
    final permits = _permits;
    return SizedBox(
      height: buttonSize + 2 * doublePadding,
      width: double.infinity,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding - cardSpacing,
          vertical: doublePadding,
        ),
        itemCount: permits.length,
        itemBuilder: (context, index) => permitCard(context, permits[index]),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget permitCard(BuildContext context, Permit permit) {
    return ClickableCard(
      height: buttonSize,
      margin: const EdgeInsets.symmetric(horizontal: cardSpacing),
      child: Row(
        children: [],
      ),
    );
  }
}
