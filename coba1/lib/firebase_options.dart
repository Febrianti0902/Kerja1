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
        return macos;
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
    apiKey: 'AIzaSyD4Y_PfM4skkHuQ4-is4vxZJiNIRw3VcLU',
    appId: '1:895061927482:web:da5f452d831414bfd23703',
    messagingSenderId: '895061927482',
    projectId: 'virtualposyandu-20464',
    authDomain: 'virtualposyandu-20464.firebaseapp.com',
    storageBucket: 'virtualposyandu-20464.appspot.com',
    measurementId: 'G-7R2BDLBMJJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxh6Ae6qQNvIijLITaWAJyVl8z-KOQx2g',
    appId: '1:895061927482:android:8722da1d38ddafedd23703',
    messagingSenderId: '895061927482',
    projectId: 'virtualposyandu-20464',
    storageBucket: 'virtualposyandu-20464.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJ_lvJkrY-ZdCAO0Z3UH0AWFGO59qPdwQ',
    appId: '1:895061927482:ios:f9713c51f4ecaa28d23703',
    messagingSenderId: '895061927482',
    projectId: 'virtualposyandu-20464',
    storageBucket: 'virtualposyandu-20464.appspot.com',
    iosClientId: '895061927482-bl10i2hcep1guiuedqkqjjhrelti6gus.apps.googleusercontent.com',
    iosBundleId: 'com.example.coba1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJ_lvJkrY-ZdCAO0Z3UH0AWFGO59qPdwQ',
    appId: '1:895061927482:ios:f9713c51f4ecaa28d23703',
    messagingSenderId: '895061927482',
    projectId: 'virtualposyandu-20464',
    storageBucket: 'virtualposyandu-20464.appspot.com',
    iosClientId: '895061927482-bl10i2hcep1guiuedqkqjjhrelti6gus.apps.googleusercontent.com',
    iosBundleId: 'com.example.coba1',
  );
}