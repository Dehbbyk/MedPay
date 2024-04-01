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
    apiKey: 'AIzaSyAdTqF1-ImBSJMCc1edHWLO1SOf9wjMzJc',
    appId: '1:207496532223:web:fbfd67b6db4abcc38ebcca',
    messagingSenderId: '207496532223',
    projectId: 'medpay-ca0f6',
    authDomain: 'medpay-ca0f6.firebaseapp.com',
    storageBucket: 'medpay-ca0f6.appspot.com',
    measurementId: 'G-QPTDXKYVE4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHauwCLX-7tTOjoZld7SCk8dDslVZHg58',
    appId: '1:207496532223:android:3b604fb12ff873d28ebcca',
    messagingSenderId: '207496532223',
    projectId: 'medpay-ca0f6',
    storageBucket: 'medpay-ca0f6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBuYLSWx28WNpnxFxxcdKCDVcHyQfd-ALI',
    appId: '1:207496532223:ios:4acdfd805f8912558ebcca',
    messagingSenderId: '207496532223',
    projectId: 'medpay-ca0f6',
    storageBucket: 'medpay-ca0f6.appspot.com',
    iosClientId: '207496532223-b4b11nst51bhsj8fs5e0ajiuhjksh8du.apps.googleusercontent.com',
    iosBundleId: 'com.example.medPay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBuYLSWx28WNpnxFxxcdKCDVcHyQfd-ALI',
    appId: '1:207496532223:ios:b1122b006b15e7a68ebcca',
    messagingSenderId: '207496532223',
    projectId: 'medpay-ca0f6',
    storageBucket: 'medpay-ca0f6.appspot.com',
    iosClientId: '207496532223-hvuj891b7519df9encrtafciqsqkd22l.apps.googleusercontent.com',
    iosBundleId: 'com.example.medPay.RunnerTests',
  );
}
