import 'package:cpea/src/core/widgets/bottom_nav_bar.dart';
import 'package:cpea/src/features/news/presentation/widgets/cpea_header.dart';
import 'package:flutter/material.dart';
import 'package:gbx_login/gbx_login.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key, this.user}) : super(key: key);

  final GbxUser? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CpeaHeader(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(selected: 0),
    );
  }
}
