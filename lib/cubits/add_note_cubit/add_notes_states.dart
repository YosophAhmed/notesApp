abstract class AddNotesState {}

class InitialAddNotesState extends AddNotesState {}

class LoadingAddNotesState extends AddNotesState {}

class SuccessAddNotesState extends AddNotesState {}

class FailureAddNotesState extends AddNotesState {
  final String errorMessage;

  FailureAddNotesState({
    required this.errorMessage,
  });
}
