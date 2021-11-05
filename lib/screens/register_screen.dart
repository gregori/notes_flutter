// Tela com o formulário de registro
import 'package:flutter/material.dart';
import 'package:notes_flutter/constants.dart';
import 'package:notes_flutter/widgets/rounded_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Notas - Nova Conta',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Entre seu email'),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Entre sua senha'),
              textAlign: TextAlign.center,
              obscureText: true,
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Registrar-se',
              onPressed: () {
                print('Registro efetuado!');
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
