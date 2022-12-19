import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_appbar.dart';
import 'package:notes/views/widgets/custom_text_field.dart';
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
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onTap: (){},
          ),
          SizedBox(
            height: 8.h,
          ),
          const CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 4.h,
          ),
          const CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
