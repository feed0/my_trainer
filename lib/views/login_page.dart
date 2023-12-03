import 'package:flutter/material.dart';
import '../login_state.dart';
import '/models/brand.dart';
import '/models/routes.dart';
// import '/models/person.dart';
import '/models/login_validation.dart';
import 'components/custom_form_field.dart';
import 'components/page_title.dart';
import '/view_models/users_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // form key and validation
  final _formKey = GlobalKey<FormState>();
  final Validation validar = Validation();

  // user data
  final User loginUser = User();
  final emailField = TextEditingController();
  final passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Brand.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const PageTitle('Meu treinador'),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // Email field
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: CustomFormField(
                            labelText: 'E-mail',
                            hintText: 'Digite seu e-mail',
                            keyboardType: TextInputType.emailAddress,
                            validator: (email) =>
                                validar.campoEmail(email.toString()),
                            onSaved: (newValue) => loginUser.email = newValue,
                            controller: emailField,
                          ),
                        ),

                        // Password field
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: CustomFormField(
                            labelText: 'Senha',
                            hintText: 'Digite sua senha',
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            validator: (senha) =>
                                validar.campoSenha(senha.toString()),
                            onFieldSubmitted: (value) =>
                                _onSubmit(context, loginUser),
                            onSaved: (newValue) =>
                                loginUser.password = newValue,
                            controller: passwordField,
                          ),
                        ),

                        // Login button
                        SizedBox(
                          width:
                              150, // Adjust the width to make the button smaller
                          height:
                              50, // Adjust the height to make the button smaller
                          child: ElevatedButton(
                            onPressed: () => _onSubmit(context, loginUser),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Brand.primary,
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25), // Set the desired border radius
                              ),
                            ),
                            child: const Text(
                              'Entrar',
                              style: TextStyle(color: Brand.containerBG),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ));
  }

  void _onSubmit(inContext, User loginAttempt) {
    // valid form
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // credentials
      String? emailAttempt = loginAttempt.email;
      String? passwordAttempt = loginAttempt.password;

      // valid credentials
      final User trainee = User.users[0];
      final User trainer = User.users[1];

      // trainee credentials
      if (emailAttempt == trainee.email &&
          passwordAttempt == trainee.password) {
        Provider.of<LoginState>(inContext, listen: false).setUser(trainee);
        Navigator.of(inContext).pushNamed(Routes.traineeApp);
        clearFields();
      }

      // trainer credentials
      else if (emailAttempt == trainer.email &&
          passwordAttempt == trainer.password) {
        Provider.of<LoginState>(inContext, listen: false).setUser(trainer);
        Navigator.of(inContext).pushNamed(Routes.trainerApp);
        clearFields();
      }

      // invalid credentials
      else {
        showDialog(
          context: inContext,
          barrierDismissible: false,
          builder: (inContext) {
            return WillPopScope(
              onWillPop: () async => false,
              child: AlertDialog(
                backgroundColor: Brand.containerBG,
                title: const Text(
                  'Senha ou e-mail inválidos!',
                  style: TextStyle(color: Brand.primary),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(inContext);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Brand.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: const Text(
                      'OK',
                      style: TextStyle(
                        color: Brand.containerBG,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }
    }

    // invalid form
    else {
      showDialog(
        context: inContext,
        barrierDismissible: false,
        builder: (inContext) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              backgroundColor: Brand.containerBG,
              title: const Text(
                'Formato de senha ou e-mail inválidos!',
                style: TextStyle(color: Brand.primary),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(inContext);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Brand.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      color: Brand.containerBG,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
  }

  void clearFields() {
    emailField.clear();
    passwordField.clear();
  }
}
