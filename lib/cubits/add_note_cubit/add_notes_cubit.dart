import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_notes_states.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit()
      : super(
          InitialAddNotesState(),
        );

}
