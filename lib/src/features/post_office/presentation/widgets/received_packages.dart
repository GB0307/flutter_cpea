import 'package:cpea/src/features/post_office/domain/entities/package.dart';
import 'package:flutter/material.dart';

final _packages = [
  Package(
      recipient: "Gabriel Borges",
      receivedAt: DateTime(2022, 1, 12),
      address: "G32")
];

class ReceivedPackages extends StatelessWidget {
  const ReceivedPackages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
