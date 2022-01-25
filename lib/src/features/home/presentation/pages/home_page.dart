import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/card_button.dart';
import 'package:cpea/src/core/widgets/cpea_profile_bar.dart';
import 'package:cpea/src/core/widgets/list_item.dart';
import 'package:cpea/src/features/appointments/domain/entities/appointment.dart';
import 'package:cpea/src/features/appointments/presentation/widgets/next_appointments.dart';
import 'package:cpea/src/features/foyer/presentation/widget/today_permits.dart';
import 'package:cpea/src/features/news/presentation/widgets/last_news.dart';
import 'package:cpea/src/features/post_office/presentation/widgets/received_packages.dart';
import 'package:cpea/src/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        systemNavigationBarColor: Colors.black38,
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          CPEAProfileBar(
            trailing: CardButton.icon(
              icon: const Icon(Icons.notifications_none_rounded),
              // TODO: OPEN LAST NOTIFICATIONS/MESSAGES
              onTap: () {},
            ),
          ),
          ListItem(
            title: L18n.tr.todayPermits,
            child: TodayPermits(
              onTap: (permit) {},
            ),
            contentPadding: EdgeInsets.zero,
            onTap: () {},
          ),
          ListItem(
            title: L18n.tr.lastNews,
            child: LastNews(
              onTap: (news) {},
            ),
            contentPadding: EdgeInsets.zero,
            onTap: _openNews,
          ),
          ListItem(
            title: L18n.tr.receivedPackages,
            child: ReceivedPackages(
              onTap: (pkg) {},
            ),
            onTap: () {},
          ),
          ListItem(
            title: L18n.tr.schedules,
            child: NextAppointments(
              onTap: (appointment) {},
            ),
            onTap: () {},
            contentPadding: EdgeInsets.zero,
          ),
          ListItem(
            title: L18n.tr.businessHours,
            onTap: () {},
          ),
          ListItem(
            title: L18n.tr.about,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  static void _openNews() => Get.context?.push(Routes.news);
}
