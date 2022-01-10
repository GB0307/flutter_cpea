import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {Key? key = const ValueKey("bottomNavBar"), required this.selected})
      : super(key: key);

  final int selected;

  static final routes = [
    Routes.home,
    Routes.entryHall,
    Routes.mail,
    Routes.schedules,
  ];

  static final items = {
    Routes.home: SalomonBottomBarItem(
      icon: const Icon(Icons.home_outlined),
      title: Text(L18n.tr.home),
      selectedColor: Get.theme.primaryColor,
    ),
    Routes.entryHall: SalomonBottomBarItem(
      icon: const Icon(Icons.sensor_door_outlined),
      title: Text(L18n.tr.hall),
      selectedColor: Colors.pink,
    ),
    Routes.mail: SalomonBottomBarItem(
      icon: const Icon(Icons.mail_outline),
      title: Text(L18n.tr.mail),
      selectedColor: Colors.pink,
    ),
    Routes.schedules: SalomonBottomBarItem(
      icon: const Icon(Icons.calendar_today_outlined),
      title: Text(L18n.tr.schedules),
      selectedColor: Colors.teal,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: routes.indexOf(GoRouter.of(context).location),
      onTap: (i) => context.go(routes[i]),
      items: routes.map((e) => items[e]!).toList(),
    );
  }
}
