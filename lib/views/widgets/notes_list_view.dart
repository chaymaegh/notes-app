import 'package:flutter/material.dart';

import 'custom_note_item.dart';

//to add a lot of items
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ItemNote(),
      );
    });
  }
}
