import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/cpea_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          children: [
            const SafeArea(
              child: CpeaHeader(
                autoMargin: false,
              ),
            ),
            const SizedBox(height: padding),
            AspectRatio(
              aspectRatio: 2,
              child: Card(),
            ),
            const SizedBox(height: halfPadding),
          ],
        ),
      ),
    );
  }
}
