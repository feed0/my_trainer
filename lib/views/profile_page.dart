import 'package:flutter/material.dart';
import 'package:my_trainer/models/brand.dart';
import 'package:my_trainer/views/components/app_title.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Brand.background,
      appBar: const AppTitle('Perfil'),
      body: Container(
          // Add your login page content here
          ),
    );
  }
}
