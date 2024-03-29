import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squip/constants/color_constant.dart';

class TEXTBUTTON extends StatelessWidget {
  const TEXTBUTTON({
    super.key,
    required this.onpressed,
    required this.text,
  });
  final onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: onpressed,
      child: Text(
        text,
        style: GoogleFonts.urbanist(
          color: ColorConstant.blue,
          fontSize: 15 ,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
