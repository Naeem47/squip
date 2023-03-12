
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constant.dart';
import '../screens/login.dart';


enum UserType {
  user,
  ambulance,
  police,
  firebrigade,
}

class RoleRegisterProvider with ChangeNotifier {
  TextEditingController usernme = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  //  void adduser(){

  UserType _userType = UserType.user;

  UserType get userType => _userType;

  setUserType(UserType type) {
    _userType = type;
    notifyListeners();
  }

  FirebaseAuth _auth = FirebaseAuth.instance;

  createUser(context) async {
    final CollectionReference users =
        FirebaseFirestore.instance.collection('users');
    users.add({
      'username': usernme.text,
      'email': email.text,
      'password': password.text,
      'usertype': _userType.name,
    });
    try {
      final Credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      email.clear();
      password.clear();
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  LOGINVIEW(),
          ));
    } on FirebaseAuthException catch (e) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: ColorConstant.grey,
              content: Text(
                e.message.toString(),
                style: GoogleFonts.rubik(color: ColorConstant.black),
              ),
            );
          });
    }

    notifyListeners();
  }
}
