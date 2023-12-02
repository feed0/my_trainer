import 'package:flutter/material.dart';
import 'package:my_trainer/views/components/app_title.dart';
import '../../models/brand.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Brand.background,
      appBar: AppTitle('Agenda'),
      body: Center(
        child: Text(
          'Agenda Page',
          style: TextStyle(color: Brand.primary),
        ),
      ),
    );
  }
}
