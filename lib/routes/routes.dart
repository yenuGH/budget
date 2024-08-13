import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/add_page/add_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/settings_page/settings_page.dart';

var tokenExists = true;

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return tokenExists == true ? const HomePage() : const Placeholder();
      },
    ),
    GoRoute(
      path: "/home_page",
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: "/add_page",
      builder: (context, state) {
        return const AddPage();
      },
    ),
    GoRoute(
      path: "/settings_page",
      builder: (context, state) {
        return const SettingsPage();
      },
    ),
  ],
);
