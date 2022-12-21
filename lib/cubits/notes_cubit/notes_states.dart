import '../../models/note_model.dart';

abstract class NotesState {}

class InitialNotesStates extends NotesState {}

class LoadingNotesState extends NotesState {}

class SuccessNotesState extends NotesState {
  final List<NoteModel> notes;
  SuccessNotesState({
    required this.notes,
  });
}

class FailureNotesState extends NotesState {
  final String errorMessage;
  FailureNotesState({
    required this.errorMessage,
  });
}
