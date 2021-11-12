// Tela para edição de notas
// Tela para adicionar nova nota
import 'package:flutter/material.dart';
import 'package:notes_flutter/constants.dart';
import 'package:notes_flutter/notes_service.dart';
import 'package:notes_flutter/widgets/rounded_button.dart';

import 'main_screen.dart';

class EditNotesScreenArguments {
  final String title;
  final String description;
  final String noteId;

  EditNotesScreenArguments({
    required this.title,
    required this.description,
    required this.noteId,
  });
}

class EditNotesScreen extends StatefulWidget {
  const EditNotesScreen({Key? key}) : super(key: key);

  static const String id = 'edit_notes_screen';

  @override
  _EditNotesScreenState createState() => _EditNotesScreenState();
}

class _EditNotesScreenState extends State<EditNotesScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as EditNotesScreenArguments;
    _titleController = TextEditingController(text: args.title);
    _descriptionController = TextEditingController(text: args.description);

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
              controller: _titleController,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Descrição da nota',
                ),
                controller: _descriptionController,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              title: 'Editar Nota',
              onPressed: () {
                NotesService.updateNote(
                  title: _titleController.text,
                  description: _descriptionController.text,
                  id: args.noteId,
                );
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
