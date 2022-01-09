import 'package:cpea/src/core/widgets/avatar_header.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:flutter/material.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebaseAuthBuilder<UserData>(builder: (ctx, user, data) {
      var url = data?.user?.photoUrl ?? user?.photoUrl;
      return SizedBox(
        height: 300,
        width: double.infinity,
        child: AvatarHeader(
          image: url != null ? NetworkImage(url) : null,
          title:
              data?.user?.name ?? user?.displayName ?? user?.email ?? "ERROR",
          subtitle: data?.user?.email ?? user?.email ?? "",
        ),
      );
    });
  }
}
