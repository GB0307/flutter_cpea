import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/card_button.dart';
import 'package:cpea/src/core/widgets/cpea_app_bar.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:flutter/material.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';
import 'package:gbx_login/gbx_login.dart';

class CPEAProfileBar extends StatelessWidget {
  const CPEAProfileBar(
      {Key? key, this.onProfileTap, this.autoMargin = true, this.trailing})
      : super(key: key);

  final void Function()? onProfileTap;
  final bool autoMargin;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: FirebaseAuthBuilder<UserData>(
        builder: (ctx, user, data) => CPEAAppBar(
          centerTitle: false,
          title: _buildTitle(ctx, user, data?.user),
          leading: _imageWidget(ctx, user, data?.user),
          autoMargin: autoMargin,
          trailing: trailing,
        ),
      ),
    );
  }

  Widget? _imageWidget(BuildContext ctx, GbxUser? user, UserData? uData) {
    var url = uData?.photoUrl ?? user?.photoUrl;
    if (url != null) {
      return CardButton.image(
        image: NetworkImage(url),
        onTap: onProfileTap,
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

  Widget _buildTitle(BuildContext ctx, GbxUser? user, UserData? data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${L18n.tr.welcome},",
          style:
              Theme.of(ctx).textTheme.subtitle2?.copyWith(color: Colors.white),
        ),
        Text(
          _firstLastName(data?.name ?? user?.displayName ?? ""),
          style:
              Theme.of(ctx).textTheme.headline5?.copyWith(color: Colors.white),
        ),
      ],
    );
  }

  static String _firstLastName(String text) {
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
}
