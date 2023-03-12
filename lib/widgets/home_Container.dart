import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:squip/constants/color_constant.dart';

class HomeCont extends StatelessWidget {
  const HomeCont({super.key,required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
      color: ColorConstant.grey,
        borderRadius: const BorderRadius.all(Radius.circular(30)),

      ),
      child: LottieBuilder.asset(txt),
    );
  }
}