import 'package:flutter/material.dart';
import 'package:squip/constants/color_constant.dart';

class ICONBUTTON extends StatelessWidget {
  const ICONBUTTON({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: ColorConstant.black,
      ),
    );
  }
}
