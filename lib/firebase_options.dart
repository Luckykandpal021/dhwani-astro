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
    apiKey: 'AIzaSyAzyLO36G7ew67D0x_wn_iMNiX9R2GKjDI',
    appId: '1:761423964634:web:9c322d8186106249b778e3',
    messagingSenderId: '761423964634',
    projectId: 'dhwani-astro-3c92a',
    authDomain: 'dhwani-astro-3c92a.firebaseapp.com',
    storageBucket: 'dhwani-astro-3c92a.appspot.com',
    measurementId: 'G-J2SXBHQLF3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD34tb8aARt7eOA2ZZFyle_ckFi7uL_jAw',
    appId: '1:761423964634:android:d416e60774ff69e0b778e3',
    messagingSenderId: '761423964634',
    projectId: 'dhwani-astro-3c92a',
    storageBucket: 'dhwani-astro-3c92a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAlQWvUUL7LKta1xmk7s8K6d6qn-SPAEY0',
    appId: '1:761423964634:ios:752a3887b734939cb778e3',
    messagingSenderId: '761423964634',
    projectId: 'dhwani-astro-3c92a',
    storageBucket: 'dhwani-astro-3c92a.appspot.com',
    iosBundleId: 'com.example.dhwaniAstro',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAlQWvUUL7LKta1xmk7s8K6d6qn-SPAEY0',
    appId: '1:761423964634:ios:752a3887b734939cb778e3',
    messagingSenderId: '761423964634',
    projectId: 'dhwani-astro-3c92a',
    storageBucket: 'dhwani-astro-3c92a.appspot.com',
    iosBundleId: 'com.example.dhwaniAstro',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAzyLO36G7ew67D0x_wn_iMNiX9R2GKjDI',
    appId: '1:761423964634:web:970f92dfaa39a9c2b778e3',
    messagingSenderId: '761423964634',
    projectId: 'dhwani-astro-3c92a',
    authDomain: 'dhwani-astro-3c92a.firebaseapp.com',
    storageBucket: 'dhwani-astro-3c92a.appspot.com',
    measurementId: 'G-VEBVLYMLPH',
  );
}
