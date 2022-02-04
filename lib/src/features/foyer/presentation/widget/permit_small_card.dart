import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/string.dart';
import 'package:cpea/src/core/widgets/cards/clickable_card.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:flutter/material.dart';

// TODO: FINISH DESIGN
class PermitSmallCard extends StatelessWidget {
  const PermitSmallCard(
      {Key? key, required this.permit, this.onTap, this.margin})
      : super(key: key);

  final Permit permit;
  final void Function()? onTap;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Column(
          children: [
            const Spacer(),
            Text(
              firstAndLastNames(permit.authorized),
              style: Theme.of(context).textTheme.subtitle1,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      height: defaultCardTileThreeLineHeight,
      width: 96,
    );
  }
}
