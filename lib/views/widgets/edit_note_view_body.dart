import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_appbar.dart';
import 'package:sizer/sizer.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

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
          const CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
