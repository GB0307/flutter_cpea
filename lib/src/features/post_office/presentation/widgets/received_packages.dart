import 'package:cpea/src/features/post_office/domain/entities/package.dart';
import 'package:cpea/src/features/post_office/presentation/widgets/package_tile.dart';
import 'package:flutter/material.dart';

final _packages = [
  Package(
    recipient: "Gabriel Borges1",
    receivedAt: DateTime(2022, 1, 12),
    address: "G32",
  ),
  Package(
    recipient: "Gabriel Borges2",
    receivedAt: DateTime(2022, 1, 2),
    address: "G32",
  ),
  Package(
    recipient: "Gabriel Borges3",
    receivedAt: DateTime(2021, 12, 5),
    address: "G32",
    deliveredAt: DateTime(2021, 12, 8),
    deliveredTo: "Gabriel Borges",
  ),
];

class ReceivedPackages extends StatelessWidget {
  const ReceivedPackages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var packages = _packages.where((element) => !element.wasDelivered).toList();
    packages.sort((a, b) => b.receivedAt.compareTo(a.receivedAt));

    return PackageTile(package: packages[0]);

    return Column(
      children: packages.take(3).map((e) => PackageTile(package: e)).toList(),
    );
  }
}
