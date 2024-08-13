import 'dart:developer';

import 'package:budget/pages/home_page/custom_bottom_navigation_bar.dart';
import 'package:budget/pages/home_page/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("budget"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.add), 
            onPressed: () {
              GoRouter.of(context).push("/add_page");
            },
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text("budget"),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
