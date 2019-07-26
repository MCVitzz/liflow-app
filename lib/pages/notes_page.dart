import 'package:Liflow/pages/new_note_page.dart';
import 'package:flutter/material.dart';

import './page_routes.dart';
import '../widgets/notes_view.dart';

class NotesPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: NotesView(
        notes: ['Hello', 'Salut', 'Olá', 'Hola'],
      ),
    );
  }

  static void action(BuildContext context) {
    Navigator.push(context, PageRouting(builder: (context) => NewNotePage()));
  }
}
