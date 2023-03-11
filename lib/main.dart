import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:squip/firebase_options.dart';
import 'package:squip/screens/signup.dart';
import 'package:squip/screens/splash.dart';
import 'package:squip/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:squip/viewmodel/loginviewprovider.dart';
import 'package:squip/viewmodel/register_provider.dart';
import 'package:squip/viewmodel/splash_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => RoleRegisterProvider(),
        ),
        ChangeNotifierProvider(create: (context)=>UserLoginProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, fontFamily: 'Urbanist'),
        home: REGISTER(),
      ),
    );
  }
}
