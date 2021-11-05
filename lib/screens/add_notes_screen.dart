// Tela para adicionar nova nota
import 'package:flutter/material.dart';
import 'package:notes_flutter/constants.dart';
import 'package:notes_flutter/widgets/rounded_button.dart';

import 'main_screen.dart';

class AddNotesScreen extends StatefulWidget {
  const AddNotesScreen({Key? key}) : super(key: key);

  static const String id = 'add_notes_screen';

  @override
  _AddNotesScreenState createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text('Adicionar Nota'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Título da nota'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Descrição da nota',
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              title: 'Adicionar Nota',
              onPressed: () {
                Navigator.pushNamed(context, MainScreen.id);
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
