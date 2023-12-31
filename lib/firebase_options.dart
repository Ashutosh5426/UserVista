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
    apiKey: 'AIzaSyDL9v5xcGj-Vxd7dDx1Nkf0YDQjOEgUA9c',
    appId: '1:1015974988324:web:80964986751a62410de6b1',
    messagingSenderId: '1015974988324',
    projectId: 'user-vista',
    authDomain: 'user-vista.firebaseapp.com',
    storageBucket: 'user-vista.appspot.com',
    measurementId: 'G-HXHPDVFWRH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOOlthl2pnODRxIt3CancvVEEMiAoT9sI',
    appId: '1:1015974988324:android:f0b6b4c4eb36d5aa0de6b1',
    messagingSenderId: '1015974988324',
    projectId: 'user-vista',
    storageBucket: 'user-vista.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-AYX5BHWsPPGCRCybK3PjqWZz0cGg45Y',
    appId: '1:1015974988324:ios:94ca190d93a3b7370de6b1',
    messagingSenderId: '1015974988324',
    projectId: 'user-vista',
    storageBucket: 'user-vista.appspot.com',
    iosBundleId: 'com.example.userVista',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-AYX5BHWsPPGCRCybK3PjqWZz0cGg45Y',
    appId: '1:1015974988324:ios:85fc317a56af019b0de6b1',
    messagingSenderId: '1015974988324',
    projectId: 'user-vista',
    storageBucket: 'user-vista.appspot.com',
    iosBundleId: 'com.example.userVista.RunnerTests',
  );
}
