import 'package:flutter/material.dart';
import '/views/profile_page.dart';
import '/views/trainer/agenda_page.dart';
import '/views/trainer/trainees_page.dart';

import '/models/brand.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TrainerApp(),
      ),
    ),
  );
}

class TrainerApp extends StatelessWidget {
  const TrainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const TrainerNavigation(),
    );
  }
}

class TrainerNavigation extends StatefulWidget {
  const TrainerNavigation({super.key});

  @override
  State<TrainerNavigation> createState() => _TrainerNavigationState();
}

class _TrainerNavigationState extends State<TrainerNavigation> {
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
            label: 'Alunos',
          ),
          NavigationDestination(
            // icon: Badge(child: Icon(Icons.notifications_sharp)),
            // label: 'Notifications',
            icon: Icon(Icons.today),
            label: 'Agenda',
          ),
          NavigationDestination(
            // icon: Badge(
            //   label: Text('2'),
            //   child: Icon(Icons.messenger_sharp),
            // ),
            // label: 'Messages',
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
      body: <Widget>[
        /// Trainees Page
        TraineesPage(),

        /// Agenda Page
        const AgendaPage(),

        /// Profile Page
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}
