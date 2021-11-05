// Tela para edição de notas
// Tela para adicionar nova nota
import 'package:flutter/material.dart';
import 'package:notes_flutter/constants.dart';
import 'package:notes_flutter/widgets/rounded_button.dart';

import 'main_screen.dart';

class EditNotesScreen extends StatefulWidget {
  const EditNotesScreen({Key? key}) : super(key: key);

  static const String id = 'edit_notes_screen';

  @override
  _EditNotesScreenState createState() => _EditNotesScreenState();
}

class _EditNotesScreenState extends State<EditNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text('Editar Nota'),
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
              title: 'Editar Nota',
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
