import 'package:cpea/src/core/errors/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:gbx_login/gbx_login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, this.user}) : super(key: key);

  final GbxUser? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [const ProfileHeader()],
      ),
    );
  }
}