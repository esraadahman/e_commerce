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
    apiKey: 'AIzaSyCEGXsQnveIy32atn0mE0fy9Evuidg4v0A',
    appId: '1:958492659305:web:0ca26cb19b8d346f9d1cf8',
    messagingSenderId: '958492659305',
    projectId: 'esraa-db457',
    authDomain: 'esraa-db457.firebaseapp.com',
    storageBucket: 'esraa-db457.appspot.com',
    measurementId: 'G-3493J6CRM8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrAKhbRYeXtnuEMShwfZq_wtobyz9x8t0',
    appId: '1:958492659305:android:490f6fb88b6914d89d1cf8',
    messagingSenderId: '958492659305',
    projectId: 'esraa-db457',
    storageBucket: 'esraa-db457.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmBHVoVsaGs2KcatfAefnF0E-0ZZYHCGE',
    appId: '1:958492659305:ios:b026e447c371d8709d1cf8',
    messagingSenderId: '958492659305',
    projectId: 'esraa-db457',
    storageBucket: 'esraa-db457.appspot.com',
    iosBundleId: 'com.example.esraaaa',
  );
}
