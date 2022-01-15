import 'package:cpea/src/core/widgets/cpea_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SafeArea(child: CpeaHeader()),
        ],
      ),
    );
  }
}