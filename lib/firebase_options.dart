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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDaCMycPJFVh9XAJXv0xJbeCqQmfl126eU',
    appId: '1:236517697089:android:117cfbb0f187a95be448c0',
    messagingSenderId: '236517697089',
    projectId: 'gluco-pulse',
    storageBucket: 'gluco-pulse.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGz9IzjHhcov8nuCJ2lsb7CL_PlXMfkoc',
    appId: '1:236517697089:ios:e0bbae6dfd2f0371e448c0',
    messagingSenderId: '236517697089',
    projectId: 'gluco-pulse',
    storageBucket: 'gluco-pulse.firebasestorage.app',
    iosClientId: '236517697089-qbam55ojf76cphqj2cfhesjd26lscof9.apps.googleusercontent.com',
    iosBundleId: 'com.example.glucoPulse3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAGz9IzjHhcov8nuCJ2lsb7CL_PlXMfkoc',
    appId: '1:236517697089:ios:e0bbae6dfd2f0371e448c0',
    messagingSenderId: '236517697089',
    projectId: 'gluco-pulse',
    storageBucket: 'gluco-pulse.firebasestorage.app',
    iosClientId: '236517697089-qbam55ojf76cphqj2cfhesjd26lscof9.apps.googleusercontent.com',
    iosBundleId: 'com.example.glucoPulse3',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCTtN-fz6pyS8BuMgEKtf0i3Tq8MRTlYv0',
    appId: '1:236517697089:web:bfea5fb27a67d739e448c0',
    messagingSenderId: '236517697089',
    projectId: 'gluco-pulse',
    authDomain: 'gluco-pulse.firebaseapp.com',
    storageBucket: 'gluco-pulse.firebasestorage.app',
    measurementId: 'G-LQF0W87PSN',
  );

}