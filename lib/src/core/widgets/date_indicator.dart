import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateIndicator extends StatelessWidget {
  const DateIndicator({
    Key? key,
    required this.date,
    this.includeDayName = true,
    this.color,
    this.includeTime = false,
  })  : alt = false,
        super(key: key);

  const DateIndicator.alternative({
    Key? key,
    required this.date,
    this.includeDayName = true,
    this.color,
    this.includeTime = false,
  })  : alt = true,
        super(key: key);

  final DateTime date;
  final bool includeTime;
  final bool includeDayName;
  final Color? color;
  final bool alt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (includeTime)
          Text(
            DateFormat('HH:mm', L18n.localeString).format(date).toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: color, fontWeight: FontWeight.bold),
          ),
        if (includeDayName)
          Text(
            DateFormat('EEE', L18n.localeString).format(date).toUpperCase(),
            style: Theme.of(context).textTheme.overline?.copyWith(color: color),
          ),
        if (includeDayName || includeTime)
          const SizedBox(height: quarterPadding),
        ...dayMonth(context),
      ],
    );
  }

  List<Widget> dayMonth(BuildContext ctx) {
    final day = Text(
      date.day.toString(),
      style: alt
          ? Theme.of(ctx).textTheme.bodyText1?.copyWith(color: color)
          : (includeDayName
              ? Theme.of(ctx).textTheme.headline6?.copyWith(color: color)
              : Theme.of(ctx).textTheme.subtitle1?.copyWith(color: color)),
    );
    final month = Text(
      DateFormat.LLL(L18n.localeString).format(date).toUpperCase(),
      style: Theme.of(ctx).textTheme.bodyText1?.copyWith(color: color),
    );

    if (!alt) {
      return [
        Padding(
          padding: const EdgeInsets.all(quarterPadding),
          child: day,
        ),
        month,
      ];
    }
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [day, const Text(" "), month],
      )
    ];
  }
}
