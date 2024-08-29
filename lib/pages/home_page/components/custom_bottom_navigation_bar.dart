import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
