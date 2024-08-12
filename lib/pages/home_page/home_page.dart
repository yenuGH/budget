import 'dart:developer';

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text("budget"),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                GoRouter.of(context).push("/settings_page");
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("budget"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upcoming), 
            label: "Upcoming"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_stats),
            label: "Statistics",
          ),
        ],
      ),
    );
  }
}
