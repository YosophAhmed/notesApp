import 'package:flutter/material.dart';
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
    return isActive ? Padding(
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
    ) : Padding(
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

  List<Color> colors = const [
    Color(0xffFEFCF3),
    Color(0xffF5EBE0),
    Color(0xffF0DBDB),
    Color(0xffDBA39A),
    Color(0xffADA2FF),
    Color(0xffC0DEFF),
    Color(0xffFFE5F1),
    Color(0xffFFF8E1),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            currentIndex = index;
            setState(() {
            });
          },
          child: ColorItem(
            color: colors[index],
            isActive: currentIndex == index,
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
