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
    apiKey: 'AIzaSyB1epltCy8Rciq9hll4PAgtfZH5sbtxLfE',
    appId: '1:380323322566:web:efe95c6598308146ff15c7',
    messagingSenderId: '380323322566',
    projectId: 'courtside-de89f',
    authDomain: 'courtside-de89f.firebaseapp.com',
    storageBucket: 'courtside-de89f.appspot.com',
    measurementId: 'G-K367NLHT8V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcgOwdy6j37HhvIAvpcLuFnbVxbVK4oUo',
    appId: '1:380323322566:android:f82fce4bf3e992adff15c7',
    messagingSenderId: '380323322566',
    projectId: 'courtside-de89f',
    storageBucket: 'courtside-de89f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqcwhinu9ZDMqYa1g5K5JzfzP0Wb7brdY',
    appId: '1:380323322566:ios:089cd0241a5ee25cff15c7',
    messagingSenderId: '380323322566',
    projectId: 'courtside-de89f',
    storageBucket: 'courtside-de89f.appspot.com',
    androidClientId: '380323322566-m1ht2juup2kkbqars0vk71dca6q078ll.apps.googleusercontent.com',
    iosClientId: '380323322566-7llse83850lhsqpcrsgg6b7j6m14tjba.apps.googleusercontent.com',
    iosBundleId: 'com.example.courtside',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqcwhinu9ZDMqYa1g5K5JzfzP0Wb7brdY',
    appId: '1:380323322566:ios:089cd0241a5ee25cff15c7',
    messagingSenderId: '380323322566',
    projectId: 'courtside-de89f',
    storageBucket: 'courtside-de89f.appspot.com',
    androidClientId: '380323322566-m1ht2juup2kkbqars0vk71dca6q078ll.apps.googleusercontent.com',
    iosClientId: '380323322566-7llse83850lhsqpcrsgg6b7j6m14tjba.apps.googleusercontent.com',
    iosBundleId: 'com.example.courtside',
  );
}
