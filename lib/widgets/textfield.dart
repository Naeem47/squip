import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:squip/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class TEXTFIELD extends StatelessWidget {
  const TEXTFIELD({super.key,required this. controller,required this.text});

  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: ColorConstant.grey,
          )
        ),
        filled: true,
        fillColor: ColorConstant.grey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: ColorConstant.grey,
          )
        ),
        hintText: text,
        hintStyle: GoogleFonts.urbanist(),
      ),
    );
  }
}