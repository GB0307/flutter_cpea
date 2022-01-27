import 'package:flutter/material.dart';

class NoSplashConfiguration extends StatelessWidget {
  const NoSplashConfiguration({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const NoSplashBehavior(),
      child: child,
    );
  }
}

class NoSplashBehavior extends ScrollBehavior {
  const NoSplashBehavior() : super();

  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
