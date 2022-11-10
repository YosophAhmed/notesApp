import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_appbar.dart';
import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          const CustomAppBar(),
          const NoteItem(),
        ],
      ),
    );
  }
}

