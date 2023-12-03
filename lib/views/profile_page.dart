import 'package:flutter/material.dart';
import '/models/brand.dart';
import '/views/components/app_title.dart';
import '/view_models/users_viewmodel.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      // backgroundColor: Brand.background,
      appBar: const AppTitle('Perfil'),
      body: Padding(
        padding: const EdgeInsets.all(Brand.padding * 3),
        child: Column(
          children: [
            // avatar
            /*  */ const Spacer(),
            Image.asset(user.picture),
            /*  */ const Spacer(),

            // name field
            Text(user.name!),
            // Padding(
            //   padding: const EdgeInsets.all(Brand.padding),
            //   child: TextField(
            //     readOnly: true,
            //     decoration: InputDecoration(
            //       labelText: 'Name',
            //       filled: true,
            //       fillColor: Brand.containerBG,
            //       border: OutlineInputBorder(
            //         borderSide: BorderSide.none,
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       labelStyle: const TextStyle(
            //         color: Brand.primary,
            //       ),
            //     ),
            //   ),
            // ),

            // phone field
            Padding(
              padding: const EdgeInsets.all(Brand.padding),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                  filled: true,
                  fillColor: Brand.containerBG,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelStyle: const TextStyle(
                    color: Brand.primary,
                  ),
                ),
              ),
            ),

            // email field
            Padding(
              padding: const EdgeInsets.all(Brand.padding),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  filled: true,
                  fillColor: Brand.containerBG,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelStyle: const TextStyle(
                    color: Brand.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
