import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constants/colors.dart';
import '../../models/note_model.dart';
import 'notes_states.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit()
      : super(
          InitialNotesStates(),
        );

  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(
        SuccessNotesState(
          notes: notesBox.values.toList(),
        ),
      );
    } catch (error) {
      emit(
        FailureNotesState(
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
