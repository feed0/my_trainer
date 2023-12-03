import 'package:flutter/material.dart';
import 'package:my_trainer/login_state.dart';
import '/models/brand.dart';
import '/views/components/app_title.dart';
import '/view_models/users_viewmodel.dart';
import 'package:provider/provider.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<LoginState>(context).user!;
    print(user.name);
    print(user.email);
    print(user.password);
    print(user.phone);
    print(user.picture);

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
                controller: TextEditingController(text: user.phone),
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
                controller: TextEditingController(text: user.email),
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
