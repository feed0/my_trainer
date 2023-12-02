import 'package:flutter/material.dart';
import '/models/brand.dart';

import 'models/routes.dart';
import 'views/login_page.dart';
import 'views/trainer/agenda_page.dart';
import 'views/trainee/today_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Brand.background,
      routes: {
        Routes.loginPage: (context) => LoginPage(),
        Routes.agendaPage: (context) => const AgendaPage(),
        Routes.todayPage: (context) => const TodayPage(),
      },
    );
  }
}
