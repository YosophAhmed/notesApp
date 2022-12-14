import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes/models/note_model.dart';

import '../../constants/colors.dart';
import 'add_notes_states.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(InitialAddNotesState());

  Color? color = const Color(0xffFEFCF3);

  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(
      LoadingAddNotesState(),
    );
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(
        SuccessAddNotesState(),
      );
    } catch (error) {
      emit(
        FailureAddNotesState(
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
