import 'package:flutter/material.dart';

import '../screens/signup.dart';

class SplashProvider extends ChangeNotifier{
   movetorole(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return  REGISTER();
    },));
    notifyListeners();
   }
   movetouser(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return  REGISTER();
    },));
    notifyListeners();
   }
    
   }
