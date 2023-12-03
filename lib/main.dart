import 'package:flutter/material.dart';
import '/models/brand.dart';
import '/models/routes.dart';
import '/views/trainee/trainee_app.dart';
import '/views/trainer/trainer_app.dart';
import '/views/login_page.dart';

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
        Routes.trainerApp: (context) => const TrainerApp(),
      },
    );
  }
}
