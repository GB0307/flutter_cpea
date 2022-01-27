import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key, this.progress}) : super(key: key);

  final double? progress;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: progress,
    );
  }
}
