import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_appbar.dart';
import 'package:notes/views/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';


import 'edit_notes_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;

  const EditNoteViewBody({
    Key? key,
    required this.note,
  }) : super(key: key);

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomTextField(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          CustomTextField(
            hintText: widget.note.subTitle,
            maxLines: 5,
            onChanged: (value) {
              subTitle = value;
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          EditNotesColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}


