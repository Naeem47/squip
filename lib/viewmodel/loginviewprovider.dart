import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squip/screens/ambulanceproviderview.dart';
import 'package:squip/screens/fireproviderview.dart';
import 'package:squip/screens/home.dart';
import 'package:squip/screens/policeproviderview.dart';

import '../constants/color_constant.dart';

class UserLoginProvider extends ChangeNotifier {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void route(context,) async{
    final CollectionReference Reference = FirebaseFirestore.instance.collection('users');
   final   user = FirebaseAuth.instance.currentUser!.uid.toString();
    var kk = await Reference
           .doc(user)
            .get()
            .then((DocumentSnapshot documentSnapshot) {
      if (!documentSnapshot.exists ) {
        if (documentSnapshot.get('usertype') == "firebrigade") {
           Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const  fireproviderview(),
          ),
        );
        }else if(documentSnapshot.get('usertype') == "police"){
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const policeproviderview(),
          ),
        );
        }
        else if (documentSnapshot.get('usertype') == "ambulance"){
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ambulanceproviderview(),
          ),
        );
       
        }
         else{
           Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
          
        }
      } else {
      ScaffoldMessengerState().showSnackBar(
        SnackBar(content: Text(e.toString(),),),
      );
      }
    });
    notifyListeners();
  }

  
  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      route(context );
    
      email.clear();
      password.clear();
      
      
    } on FirebaseAuthException catch (e) {
      print(
        e.toString(),
      );
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: ColorConstant.grey,
              content: Text(
                e.message.toString(),
                style: GoogleFonts.rubik(color: ColorConstant.blue),
              ),
            );
          });
    }

    notifyListeners();
  }
}
