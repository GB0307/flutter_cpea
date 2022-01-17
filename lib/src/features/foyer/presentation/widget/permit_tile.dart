import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/card_tile.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
      width: width,
      title: permit.authorized,
      subtitle: "Liberado até as 18:00",
      margin: margin,
      leading: _leading(context),
    );
  }

  Widget _leading(BuildContext context) {
    final now = DateTime.now();
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(cardBorderRadius)),
      child: Container(
        height: double.infinity,
        color: Theme.of(context).primaryColorLight,
        child: AspectRatio(
          aspectRatio: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('EEE', L18n.localeString).format(now).toUpperCase(),
                style: Theme.of(context).textTheme.overline,
              ),
              Padding(
                padding: const EdgeInsets.all(quarterPadding),
                child: Text(
                  now.day.toString(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(DateFormat.LLL(L18n.localeString).format(now).toUpperCase()),
            ],
          ),
        ),
      ),
    );
  }
}
