import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:cpea/src/features/foyer/domain/foyer_module.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:flutter/material.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:gbx_login/gbx_login.dart';

class PermitListPage extends StatelessWidget {
  const PermitListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.elevated(
        title: Text(L18n.tr.permitListPage_title),
      ),
      body: AuthBuilder<GbxUser, UserData>(
        builder: (ctx, state) => Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            ElevatedButton(
              onPressed: () async {
                var data =
                    state.whenOrNull<UserData>(loggedIn: (user, data) => data)!;
                var permit = await FoyerModule.instance.create(CreateParams(
                    data: Permit(
                        authorizer: data.name,
                        authorized: "authorized",
                        address: data.lote,
                        startDate: DateTime.now(),
                        endDate: DateTime.now().add(const Duration(days: 1)))));
                permit.on(
                  success: (data) => print(data.toJson()),
                  failure: print,
                );
              },
              child: const Text("Add permit"),
            ),
            ElevatedButton(
              onPressed: () async {
                var permits = await FoyerModule.instance.query();
                permits.on(
                  success: print,
                  failure: print,
                );
              },
              child: const Text("Query"),
            ),
          ],
        ),
      ),
    );
  }
}
