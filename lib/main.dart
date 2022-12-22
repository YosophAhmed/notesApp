import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/bloc_observer.dart';
import 'package:notes/constants/colors.dart';
import 'models/note_model.dart';
import 'notes_app.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter();
  Hive.registerAdapter(
    NoteModelAdapter(),
  );
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(
    const NotesApp(),
  );
}
