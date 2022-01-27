import 'package:cpea/src/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.warning_amber_rounded,
          color: darkGray,
          size: 42,
        ),
        Text(
          text,
          style:
              Theme.of(context).textTheme.subtitle2?.copyWith(color: darkGray),
        )
      ],
    );
  }
}
