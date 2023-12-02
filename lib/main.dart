import 'package:flutter/material.dart';
import 'package:my_trainer/views/trainee/trainee_app.dart';
import '/models/brand.dart';

import 'models/routes.dart';
import 'views/login_page.dart';

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
        Routes.traineeApp: (context) => const TraineeApp(),
        // TODO add trainer routes
      },
    );
  }
}
