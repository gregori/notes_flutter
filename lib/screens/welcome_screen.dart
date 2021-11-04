// Tela com os botões login e registrar
import 'package:flutter/material.dart';
import 'package:notes_flutter/widgets/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                'Notas',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            RoundedButton(
              color: Colors.blueAccent,
              title: 'Login',
              onPressed: () {
                print('Login');
              },
            ),
            RoundedButton(
              color: Colors.green,
              title: 'Registrar-se',
              onPressed: () {
                print('Registrar-se');
              },
            ),
          ],
        ),
      ),
    );
  }
}
