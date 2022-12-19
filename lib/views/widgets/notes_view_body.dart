import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_appbar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    Key? key,
  }) : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onTap: (){},
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
