// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:squip/constants/color_constant.dart';
// import 'package:squip/screens/login.dart';

// class RoleRegisterProvider extends ChangeNotifier {
//   TextEditingController email = TextEditingController();
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();
//   TextEditingController cpassword = TextEditingController();
  

  



//   createUser(context) async {
   

//     final CollectionReference users =
//         FirebaseFirestore.instance.collection('users');
//     try {
//       final Credential =
//           await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email.text,
//         password: password.text,
//       );
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const LOGINVIEW(),
//           ));
//     } on FirebaseAuthException catch (e) {
//       return showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               backgroundColor: ColorConstant.grey,
//               content: Text(
//                 e.message.toString(),
//                 style: GoogleFonts.rubik(color: ColorConstant.blue),
//               ),
//             );
//           });
//     }

//     notifyListeners();
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

enum UserType {
  customer,
  vendor,
}
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController displayname = TextEditingController();

class RoleRegisterProvider with ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  UserType _userType = UserType.customer;

  UserType get userType => _userType;

  void setUserType(UserType type) {
    _userType = type;
    notifyListeners();
  }

  Future<UserCredential?> signUp(
      {
        required String email,
      required String password,
      required String displayName
      
      }) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // User? user = userCredential.user;
      // if (user != null) {
      //   // Set user display name
      //   await user.updateDisplayName(displayName);

      //   // Add custom user type claim
      //   await user.getIdToken(true).then((token) async {
      //     await _auth.getRedirectResult (user.uid, {
      //       'userType': _userType.toString(),
      //     });
      //   });

      //   return userCredential;
      // }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }

    return null;
  }
}
