import 'package:flutter/material.dart';
import 'package:squip/viewmodel/register_provider.dart';
import 'package:squip/widgets/iconbutton.dart';
import 'package:squip/widgets/mainbutton.dart';
import 'package:squip/widgets/textbutton.dart';
import 'package:squip/widgets/textfield.dart';
import 'package:squip/constants/Texts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class REGISTER extends StatelessWidget {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _displayname = TextEditingController();
  REGISTER({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<RoleRegisterProvider>(
          builder: (context, val, child) => Padding(
            padding: const EdgeInsets.only(
              top: 20,
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
                  Textconstants.signup,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TEXTFIELD(
                    controller: _email, text: Textconstants.textfieldtxt2),
                const SizedBox(
                  height: 15,
                ),
                TEXTFIELD(
                    controller: _password, text: Textconstants.textfieldtxt3),
                const SizedBox(
                  height: 15,
                ),
                TEXTFIELD(
                    controller: _displayname,
                    text: Textconstants.textfieldtxt4),
                const SizedBox(
                  height: 15,
                ),
                // TEXTFIELD(
                //     controller: va, text: Textconstants.textfieldtxt5),
                // const SizedBox(
                //   height: 15,
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 200,
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
                  onpressed: () async {
                    await val.signUp(
                        displayName: displayname.text,
                        email: email.text,
                        password: password.text);
                        print("SIGNUP");
                  },
                  
                  text: Textconstants.register,
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Textconstants.signup1,
                      style: GoogleFonts.urbanist(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TEXTBUTTON(onpressed: () {}, text: Textconstants.loginnow),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                DropdownButtonFormField<UserType>(
                  value: val.userType,
                  items: [
                    DropdownMenuItem(
                      value: UserType.customer,
                      child: Text('Customer'),
                    ),
                    DropdownMenuItem(
                      value: UserType.vendor,
                      child: Text('Vendor'),
                    ),
                  ],
                  onChanged: (value) {
                    val.setUserType(value!);
                  },
                  decoration: InputDecoration(
                    labelText: 'User Type',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
