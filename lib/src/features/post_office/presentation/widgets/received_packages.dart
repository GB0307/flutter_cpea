import 'package:cpea/src/core/theme/consts.dart';
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
  const ReceivedPackages({Key? key, this.onTap}) : super(key: key);

  final void Function(Package package)? onTap;

  @override
  Widget build(BuildContext context) {
    var packages = _packages.where((element) => !element.wasDelivered).toList();
    packages.sort((a, b) => b.receivedAt.compareTo(a.receivedAt));

    var mPackages = packages.take(3).toList();
    var len = mPackages.length;

    return Column(
      children: List.generate(len, (i) => i).map((index) {
        return Padding(
          padding: EdgeInsets.only(bottom: index + 1 < len ? padding : 0),
          child: PackageTile(
            package: mPackages[index],
            onTap: onTap != null ? () => onTap?.call(mPackages[index]) : null,
          ),
        );
      }).toList(),
    );
  }
}
