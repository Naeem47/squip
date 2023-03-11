import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squip/screens/home.dart';

import '../constants/color_constant.dart';

class UserLoginProvider extends ChangeNotifier{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  login(context)async{
     try {
      final credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(

        email: email.text,
        password: password.text,
      );
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const  Home(),
          ));
    } on FirebaseAuthException catch (e) {
      print(e.toString(),);
      return showDialog(context: context, builder: (context) {
        return AlertDialog(
        backgroundColor: ColorConstant.grey,


        content: Text(
          e.message.toString(),
          style: GoogleFonts.rubik(color: ColorConstant.blue),
        ),
      );
    }
        
      );}
       
    notifyListeners();
  }
  }
