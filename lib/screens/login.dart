import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:squip/constants/color_constant.dart';
import 'package:squip/viewmodel/loginviewprovider.dart';
import 'package:squip/viewmodel/register_provider.dart';
import 'package:squip/widgets/iconbutton.dart';
import 'package:squip/widgets/mainbutton.dart';
import 'package:squip/widgets/textbutton.dart';
import 'package:squip/widgets/textfield.dart';
import 'package:squip/constants/Texts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squip/screens/signup.dart';

class LOGINVIEW extends StatelessWidget {
   LOGINVIEW({super.key});
   final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Consumer<UserLoginProvider>(
              builder: (context, value, child) => Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 22,
                  right: 22,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ICONBUTTON(),
                    const SizedBox(
                      height: 22,
                    ),
                    Text(
                      Textconstants.logintext,
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TEXTFIELD(controller: value.email, text: Textconstants.textfieldtxt,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field cannot be empty ';
                    } else {
                      return null;
                    }
                  }),
                    const SizedBox(
                      height: 15,
                    ),
                    TEXTFIELD(controller: value.password, text: Textconstants.textfieldtxt1,validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field cannot be empty ';
                    } else {
                      return null;
                    }
                  }),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 210,
                      ),
                      child: TEXTBUTTON(
                        onpressed: () {},
                        text: Textconstants.foregtpassword,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Mainbutton(
                      onpressed: (){
                        if(_formKey.currentState!.validate())
                        {
                        value.login(context);}
                      },
                      text: Textconstants.login,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Textconstants.logintext1,
                          style: GoogleFonts.urbanist(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TEXTBUTTON(
                            onpressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return REGISTER();
                                  },
                                ),
                              );
                            },
                            text: Textconstants.registernow),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                   
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
