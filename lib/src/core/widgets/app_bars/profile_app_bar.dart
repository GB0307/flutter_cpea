import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/utils/string.dart';
import 'package:cpea/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:cpea/src/core/widgets/content/image_loader.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:flutter/material.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';
import 'package:gbx_login/gbx_login.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar(
      {Key? key, this.trailing, this.onLeadingTap, this.onTrailingTap})
      : super(key: key);

  final Widget? trailing;

  final VoidCallback? onLeadingTap, onTrailingTap;

  @override
  Widget build(BuildContext context) {
    return FirebaseAuthBuilder<UserData>(
      builder: (ctx, user, data) => CustomAppBar.elevated(
        centerTitle: false,
        backgroundColor: Theme.of(context).primaryColor,
        leading: _image(ctx, user, data?.user),
        trailing: trailing,
        onTrailingTap: onTrailingTap,
        onLeadingTap: onLeadingTap,
        title: _buildTitle(context, user, data?.user),
      ),
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
          firstAndLastNames(data?.name ?? user?.displayName ?? ""),
          style:
              Theme.of(ctx).textTheme.headline5?.copyWith(color: Colors.white),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);

  Widget _image(BuildContext ctx, GbxUser? user, UserData? data) {
    return ImageLoader(
      url: data?.photoUrl ?? user?.photoUrl,
      placeholder: (context, url) => Image.asset(
        "assets/images/profile_placeholder.jpg",
        fit: BoxFit.cover,
      ),
      error: (context, url, error) => Image.asset(
        "assets/images/profile_placeholder.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
