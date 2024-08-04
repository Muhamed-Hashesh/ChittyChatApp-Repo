// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAM7TonxRFz47TmrgcaAS0IDkzBcdjqYlU',
    appId: '1:541814658135:web:6c8c753e3eb7d57744bf12',
    messagingSenderId: '541814658135',
    projectId: 'chitchat-app-97c97',
    authDomain: 'chitchat-app-97c97.firebaseapp.com',
    storageBucket: 'chitchat-app-97c97.appspot.com',
    measurementId: 'G-F0SM6Z1DYX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtIQYS1QZtmjFmSC_naA9RYAtLJEHDtzw',
    appId: '1:541814658135:android:efc6865e0e1f9b6044bf12',
    messagingSenderId: '541814658135',
    projectId: 'chitchat-app-97c97',
    storageBucket: 'chitchat-app-97c97.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaFPn5GbT-Txoev7JDcNrUiivHWzy4Xi4',
    appId: '1:541814658135:ios:d73d3e110a97ad7644bf12',
    messagingSenderId: '541814658135',
    projectId: 'chitchat-app-97c97',
    storageBucket: 'chitchat-app-97c97.appspot.com',
    iosBundleId: 'com.example.chitChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAaFPn5GbT-Txoev7JDcNrUiivHWzy4Xi4',
    appId: '1:541814658135:ios:d73d3e110a97ad7644bf12',
    messagingSenderId: '541814658135',
    projectId: 'chitchat-app-97c97',
    storageBucket: 'chitchat-app-97c97.appspot.com',
    iosBundleId: 'com.example.chitChatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAM7TonxRFz47TmrgcaAS0IDkzBcdjqYlU',
    appId: '1:541814658135:web:c1ab130580a505c544bf12',
    messagingSenderId: '541814658135',
    projectId: 'chitchat-app-97c97',
    authDomain: 'chitchat-app-97c97.firebaseapp.com',
    storageBucket: 'chitchat-app-97c97.appspot.com',
    measurementId: 'G-30MXFCL6M5',
  );
}