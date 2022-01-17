import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/card_button.dart';
import 'package:cpea/src/core/widgets/cpea_profile_bar.dart';
import 'package:cpea/src/features/foyer/presentation/widget/today_permits.dart';
import 'package:cpea/src/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CPEAProfileBar(
            trailing: CardButton.icon(
              icon: Icon(Icons.notifications_none_rounded),
              onTap: _openNews,
            ),
          ),
          //const SizedBox(height: padding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Text(
              L18n.tr.todayPermits,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const TodayPermits(),
        ],
      ),
    );
  }

  static void _openNews() => Get.context?.push(Routes.news);
}
