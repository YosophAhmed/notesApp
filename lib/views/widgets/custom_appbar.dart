import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28.sp,
          ),
        ),
        const Spacer(),
        const CustomSearchIcon(),
      ],
    );
  }
}

