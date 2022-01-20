import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateIndicator extends StatelessWidget {
  const DateIndicator(
      {Key? key, required this.date, this.includeDayName = true})
      : super(key: key);

  final DateTime date;
  final bool includeDayName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (includeDayName)
          Text(
            DateFormat('EEE', L18n.localeString).format(date).toUpperCase(),
            style: Theme.of(context).textTheme.overline,
          ),
        Padding(
          padding: const EdgeInsets.all(quarterPadding),
          child: Text(
            date.day.toString(),
            style: includeDayName
                ? Theme.of(context).textTheme.headline6
                : Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Text(DateFormat.LLL(L18n.localeString).format(date).toUpperCase()),
      ],
    );
  }
}
