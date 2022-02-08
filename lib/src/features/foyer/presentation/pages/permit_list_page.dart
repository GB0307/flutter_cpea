import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PermitListPage extends StatelessWidget {
  const PermitListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.elevated(title: Text(L18n.tr.permitListPage_title)),
    );
  }
}
