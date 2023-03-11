// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAJeUusJoipOQan2mkUTiy3oO6kdqPJFQY',
    appId: '1:409562626404:web:9f7dc7a48113950b8e2271',
    messagingSenderId: '409562626404',
    projectId: 'squip-d6b42',
    authDomain: 'squip-d6b42.firebaseapp.com',
    storageBucket: 'squip-d6b42.appspot.com',
    measurementId: 'G-RM9HWQCDJK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvxieSubm32aeNkQvzC8aPJNIfHf2EQ-o',
    appId: '1:409562626404:android:8bf85085c278ffe28e2271',
    messagingSenderId: '409562626404',
    projectId: 'squip-d6b42',
    storageBucket: 'squip-d6b42.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA27RYoUhoWfj1LgqW8mPNRZVbRgyuyOEs',
    appId: '1:409562626404:ios:70f2bc8067dd17988e2271',
    messagingSenderId: '409562626404',
    projectId: 'squip-d6b42',
    storageBucket: 'squip-d6b42.appspot.com',
    iosClientId: '409562626404-pb6eqs7a5rimkf3eh4079277qq0s77ec.apps.googleusercontent.com',
    iosBundleId: 'com.example.squip',
  );
}
