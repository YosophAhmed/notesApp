import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../models/note_model.dart';
import 'colors_list_items.dart';

class EditNotesColorsList extends StatefulWidget {
  final NoteModel note;

  const EditNotesColorsList({
    Key? key,
    required this.note,
  }) : super(key: key);

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            widget.note.color = kColors[index].value;
            setState(() {});
          },
          child: ColorItem(
            color: kColors[index],
            isActive: currentIndex == index,
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}