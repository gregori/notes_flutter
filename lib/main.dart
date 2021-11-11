import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes_flutter/screens/add_notes_screen.dart';
import 'package:notes_flutter/screens/edit_notes_screen.dart';
import 'package:notes_flutter/screens/login_screen.dart';
import 'package:notes_flutter/screens/main_screen.dart';
import 'package:notes_flutter/screens/register_screen.dart';
import 'package:notes_flutter/screens/welcome_screen.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  Future<FirebaseApp> _initializeFirebase() async {
    return await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Não foi possível inicializar o banco de dados'),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
            WelcomeScreen.id: (context) => const WelcomeScreen(),
            LoginScreen.id: (context) => const LoginScreen(),
            RegisterScreen.id: (context) => const RegisterScreen(),
            MainScreen.id: (context) => const MainScreen(),
            AddNotesScreen.id: (context) => const AddNotesScreen(),
            EditNotesScreen.id: (context) => const EditNotesScreen(),
          });
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
