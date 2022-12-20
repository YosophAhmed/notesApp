import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/constants/colors.dart';
import 'models/note_model.dart';
import 'notes_app.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(
    NoteModelAdapter(),
  );

  runApp(
    const NotesApp(),
  );
}
