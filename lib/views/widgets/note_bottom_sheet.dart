import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_botton.dart';
import 'package:sizer/sizer.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 3.5.w,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          const CustomTextField(hintText: 'Title'),
          SizedBox(
            height: 4.h,
          ),
          const CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 4.h,
          ),
          CustomButton(
            label: 'Add',
            height: 7.h,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
