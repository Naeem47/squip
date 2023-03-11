import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:squip/constants/color_constant.dart';
import 'package:squip/screens/signup.dart';
import 'package:squip/viewmodel/splash_provider.dart';
import 'package:squip/widgets/mainbutton.dart';
import 'package:squip/constants/Texts.dart';

class Splash extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Scaffold(
          backgroundColor: ColorConstant.white,
          body: Consumer<SplashProvider>(
            builder: (context, value, child) => Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/SQUIP.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(Textconstants.squip,
                              style: GoogleFonts.urbanist(
                                fontSize: 25,
                                color: ColorConstant.black,
                                fontWeight: FontWeight.w400,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          Mainbutton(
                              onpressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => REGISTER(),
                                    ));
                              },
                              text: Textconstants.registerasservice),
                          const SizedBox(
                            height: 20,
                          ),
                          Mainbutton(
                              onpressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => REGISTER(),
                                    ));
                              },
                              text: Textconstants.registerasuser),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
