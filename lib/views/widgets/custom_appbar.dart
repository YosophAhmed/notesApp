import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';
import 'package:sizer/sizer.dart';

import 'custom_icon.dart';


class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;


  const CustomAppBar({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28.sp,
            color: kPrimaryColor,
          ),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          onTap: onTap,
        ),
      ],
    );
  }
}
