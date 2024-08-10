import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

var tokenExists = true;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey.shade800,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(routes: [
        GoRoute(
          path: "/",
          builder: (context, state) {
            return tokenExists == true? const HomePage() : const Placeholder();
          },
        ),
        GoRoute(
          path: "/home_page",
          builder: (context, state) {
            return const HomePage();
          },
        ),
      ]),
    );
  }
}


