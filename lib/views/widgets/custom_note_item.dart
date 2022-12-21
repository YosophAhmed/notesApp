import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:sizer/sizer.dart';

import '../edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;

  const NoteItem({
    Key? key,
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 1.h,
        ),
        padding: EdgeInsets.only(
          top: 3.h,
          bottom: 3.h,
          left: 3.w,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 2.h,
                ),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 14.sp,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 28.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 6.w,
              ),
              child: Text(
                note.date.substring(0,16),
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 10.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
