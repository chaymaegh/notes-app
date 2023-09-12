import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mission_list/views/widgets/add_note_bottom.dart';
import 'package:mission_list/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              }
              );
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
