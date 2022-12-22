import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
  final Color color;

  const ColorItem({
    Key? key,
    required this.isActive,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
            ),
            child: CircleAvatar(
              radius: 4.h,
              backgroundColor: kPrimaryColor,
              child: CircleAvatar(
                radius: 3.2.h,
                backgroundColor: color,
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
            ),
            child: CircleAvatar(
              radius: 4.h,
              backgroundColor: color,
            ),
          );
  }
}

class ColorsList extends StatefulWidget {
  const ColorsList({Key? key}) : super(key: key);

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  final bool isSelected = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            BlocProvider.of<AddNotesCubit>(context).color = kColors[index];
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
