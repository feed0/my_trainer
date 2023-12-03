import 'package:flutter/material.dart';

import '/models/person.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pessoa = ModalRoute.of(context)!.settings.arguments as Person;

    return Scaffold(
      appBar: AppBar(title: const Text('Dados Pessoais'), centerTitle: true),
      body: _body(pessoa),
    );
  }

  Container _body(user) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //   '${user.name} ${user.sobrenome}',
          //   style: const TextStyle(fontSize: 30),
          // ),
          Text(
            'E-mail: ${user.email}',
            style: const TextStyle(fontSize: 18),
          ),
          Text(
            'Senha: ${user.password}',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
