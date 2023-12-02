import 'package:flutter/material.dart';
import '/views/profile_page.dart';
import '/views/trainee/routines_page.dart';
import '/views/trainee/today_page.dart';

import '/models/brand.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TraineeApp(),
      ),
    ),
  );
}

class TraineeApp extends StatelessWidget {
  const TraineeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const TraineeNavigation(),
    );
  }
}

class TraineeNavigation extends StatefulWidget {
  const TraineeNavigation({super.key});

  @override
  State<TraineeNavigation> createState() => _TraineeNavigationState();
}

class _TraineeNavigationState extends State<TraineeNavigation> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Brand.background,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Brand.secondary,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            // icon: Icon(Icons.home_outlined),
            // label: 'Home',
            icon: Icon(Icons.folder),
            label: 'Treinos',
          ),
          NavigationDestination(
            // icon: Badge(child: Icon(Icons.notifications_sharp)),
            // label: 'Notifications',
            icon: Icon(Icons.today),
            label: 'Hoje',
          ),
          NavigationDestination(
              // icon: Badge(
              //   label: Text('2'),
              //   child: Icon(Icons.messenger_sharp),
              // ),
              // label: 'Messages',
              icon: Icon(Icons.account_circle),
              label: 'Perfil'),
        ],
      ),
      body: <Widget>[
        /// Routines Page
        RoutinesPage(),

        /// Today Page
        const TodayPage(),

        /// Profile Page
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}
