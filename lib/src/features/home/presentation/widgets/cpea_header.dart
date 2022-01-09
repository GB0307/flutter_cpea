import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/image_card.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:flutter/material.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';
import 'package:gbx_login/gbx_login.dart';
import 'package:get/get.dart';

class CpeaHeader extends StatelessWidget {
  const CpeaHeader({Key? key, this.trailing}) : super(key: key);

  final UserWidgetBuilder<GbxUser, UserData>? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${L18n.tr.welcome},",
                  style: Get.textTheme.subtitle2,
                ),
                const SizedBox(height: 6),
                FirebaseAuthBuilder<UserData>(
                  builder: (ctx, user, data) => Text(
                    firstLastName(data?.user?.name ?? user?.displayName ?? ""),
                    style: Get.textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
          FirebaseAuthBuilder<UserData>(
            builder: (ctx, user, data) =>
                (trailing ?? imageWidget).call(ctx, user, data?.user) ??
                Container(),
          ),
        ],
      ),
    );
  }

  String firstLastName(String text) {
    var words = text.split(" ");
    var value = "";
    if (words.isNotEmpty) {
      value = words[0];
    }
    if (words.length > 1) {
      value += " ${words.last}";
    }
    return value;
  }

  Widget? imageWidget(BuildContext ctx, GbxUser? user, UserData? uData) {
    var url = uData?.photoUrl ?? user?.photoUrl;
    if (url != null) {
      return ImageCard(url: url);
    }
  }
}
