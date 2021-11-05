// Tela com os botões login e registrar
import 'package:flutter/material.dart';
import 'package:notes_flutter/screens/login_screen.dart';
import 'package:notes_flutter/screens/register_screen.dart';
import 'package:notes_flutter/widgets/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              color: Colors.green,
              title: 'Registrar-se',
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
