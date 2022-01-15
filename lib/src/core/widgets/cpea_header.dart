import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/image_card.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:flutter/material.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';
import 'package:gbx_login/gbx_login.dart';
import 'package:get/get.dart';

class CpeaHeader extends StatelessWidget {
  const CpeaHeader(
      {Key? key, this.trailing, this.onTap, this.autoMargin = true})
      : super(key: key);

  final WidgetBuilder? trailing;
  final void Function()? onTap;
  final bool autoMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: autoMargin
          ? const EdgeInsets.symmetric(
              vertical: doublePadding,
              horizontal: horizontalPadding,
            )
          : const EdgeInsets.symmetric(vertical: doublePadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FirebaseAuthBuilder<UserData>(
            builder: (ctx, user, data) =>
                imageWidget.call(ctx, user, data?.user) ?? Container(),
          ),
          const SizedBox(width: padding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${L18n.tr.welcome},",
                  style: Get.textTheme.subtitle2,
                ),
                FirebaseAuthBuilder<UserData>(
                  builder: (ctx, user, data) => Text(
                    firstLastName(data?.user?.name ?? user?.displayName ?? ""),
                    style: Get.textTheme.headline5,
                  ),
                ),
              ],
            ),
          ),
          if (trailing != null) trailing!(context),
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
      return ImageCard(
        size: 58,
        url: url,
        onTap: onTap,
        loadingBuilder: _loadingPlaceholder,
        errorBuilder: _placeholder,
      );
    }
  }

  Widget _loadingPlaceholder(ctx, Widget child, ImageChunkEvent? progress) {
    var p = progress?.cumulativeBytesLoaded ?? 0;
    var expected = progress?.expectedTotalBytes ?? 0;
    if (p == expected) return child;
    return _placeholder(ctx, null, null);
  }

  Widget _placeholder(ctx, error, stack) {
    return Image.asset(
      "assets/images/profile_placeholder.jpg",
      fit: BoxFit.cover,
    );
  }
}
