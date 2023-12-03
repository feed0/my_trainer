import 'package:flutter/material.dart';
// import 'package:my_trainer/view_models/users_viewmodel.dart';
import '/models/brand.dart';
import '/views/profile_page.dart';
// import '/views/trainer/agenda_page.dart';
import '/views/trainer/trainees_page.dart';
// import '/view_models/users_viewmodel.dart';

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

  // final User user = User.users[1];

  @override
  Widget build(BuildContext context) {
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
            selectedIcon: Icon(Icons.folder),
            icon: Icon(Icons.folder),
            label: 'Alunos',
          ),
          // NavigationDestination(
          //   icon: Icon(Icons.today),
          //   label: 'Agenda',
          // ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
      body: <Widget>[
        TraineesPage(),
        // const AgendaPage(),
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}
