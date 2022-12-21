import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:sizer/sizer.dart';

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
          CustomButton(
            label: 'Add',
            height: 8.h,
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                NoteModel note = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blueGrey.value,
                );
                BlocProvider.of<AddNotesCubit>(context).addNote(note);
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
