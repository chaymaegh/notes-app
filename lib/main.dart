import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mission_list/constants.dart';
import 'package:mission_list/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
