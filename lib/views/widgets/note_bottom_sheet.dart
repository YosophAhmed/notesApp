import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_states.dart';
import 'package:sizer/sizer.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 3.5.w,
        ),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if(state is SuccessAddNotesState) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return const AddNoteForm();
          },
        ),
      ),
    );
  }
}
