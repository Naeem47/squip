import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squip/constants/color_constant.dart';
import 'package:squip/screens/Ambulance.dart';
import 'package:squip/screens/firebrigade.dart';
import 'package:squip/screens/login.dart';
import 'package:squip/screens/police.dart';

import '../widgets/home_Container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("SERVICES",
                style: GoogleFonts.urbanist(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: ColorConstant.black,
                )),
          ),
          body: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 100, right: 100, top: 70),
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AMBULANCE(),
                          )),
                      child: const HomeCont(
                        txt: "assets/lotties/ambulance.json",
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 100, right: 100, top: 40),
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const POLICE(),
                          )),
                      child: const HomeCont(
                        txt: "assets/lotties/firebrigade.json",
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 100, right: 100, top: 40),
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FIRERIGADE(),
                          )),
                      child: const HomeCont(
                        txt: "assets/lotties/police2.json",
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
