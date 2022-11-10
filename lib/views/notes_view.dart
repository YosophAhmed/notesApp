import 'package:flutter/material.dart';
import 'package:notes/views/widgets/note_bottom_sheet.dart';
import 'package:sizer/sizer.dart';
import 'package:notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.sp,),
            ),
          );
        },
        child: Icon(
          Icons.add,
          size: 24.sp,
        ),
      ),
    );
  }
}


