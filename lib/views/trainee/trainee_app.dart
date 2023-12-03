import 'package:flutter/material.dart';
import '/views/profile_page.dart';
import '/views/trainee/routines_page.dart';
import '/views/trainee/today_page.dart';
import '/models/brand.dart';
// import '/view_models/users_viewmodel.dart';

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

  // final User user = User.users[0];

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
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.folder),
            label: 'Treinos',
          ),
          NavigationDestination(
            icon: Icon(Icons.today),
            label: 'Hoje',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
      body: <Widget>[
        RoutinesPage(),
        const TodayPage(),
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}
