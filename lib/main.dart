import 'package:flutter/material.dart';

import './routes/routes.dart';

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
      routerConfig: goRouter,
    );
  }
}