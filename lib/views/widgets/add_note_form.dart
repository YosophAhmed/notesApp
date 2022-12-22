import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_states.dart';
import 'package:notes/models/note_model.dart';
import 'package:sizer/sizer.dart';

import 'colors_list_items.dart';
import 'custom_back_button.dart';
import 'custom_botton.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            CustomTextField(
              hintText: 'Title',
              onSaved: (value) {
                title = value;
              },
            ),
            SizedBox(
              height: 4.h,
            ),
            CustomTextField(
              hintText: 'Content',
              onSaved: (value) {
                subTitle = value;
              },
              maxLines: 5,
            ),
            SizedBox(
              height: 4.h,
            ),
            const ColorsList(),
            SizedBox(
              height: 4.h,
            ),
            BlocBuilder<AddNotesCubit, AddNotesState>(
              builder: (context, state) => CustomButton(
                label: 'Add',
                height: 8.h,
                isLoading: state is LoadingAddNotesState ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel note = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.white.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(note);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            CustomBackButton(
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 4.h,
            ),
          ],
        ),
      ),
    );
  }
}

