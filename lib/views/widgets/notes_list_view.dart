import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 2.h,
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const NoteItem(),
      ),
    );
  }
}
