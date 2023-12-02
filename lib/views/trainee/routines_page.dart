import 'package:flutter/material.dart';
import 'package:my_trainer/views/components/app_title.dart';

import '/models/brand.dart';

// import 'trainee_navigation.dart';
// import '/views/components/page_title.dart';

class RoutinesPage extends StatelessWidget {
  const RoutinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Brand.background,
      appBar: const AppTitle('Treinos'),
      body: Container(
          // Add your content here
          ),
      // bottomNavigationBar: const TraineeNavBar(),
    );
  }
}
