// // ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// // import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;
//
// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         return macos;
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }
//
//   static const FirebaseOptions web = FirebaseOptions(
//     apiKey: 'AIzaSyDjUlsJ7CWSS52eOMXU9W7rVVLzgCWbsVI',
//     appId: '1:404278849036:web:6b16b6c08ba9cf83368829',
//     messagingSenderId: '404278849036',
//     projectId: 'mygrow-software-d0a6a',
//     authDomain: 'mygrow-software-d0a6a.firebaseapp.com',
//     storageBucket: 'mygrow-software-d0a6a.appspot.com',
//     measurementId: 'G-LX8J1KHKG6',
//   );
//
//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyCZI5Opw8lu2_6wss1WEsI-EQu-2jdbIXw',
//     appId: '1:404278849036:android:56c8c0b31dd65370368829',
//     messagingSenderId: '404278849036',
//     projectId: 'mygrow-software-d0a6a',
//     storageBucket: 'mygrow-software-d0a6a.appspot.com',
//   );
//
//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'AIzaSyBJsEoGVQ6M1w285HNUfIvY3b6F_-xi8cc',
//     appId: '1:404278849036:ios:586ea99293773c3d368829',
//     messagingSenderId: '404278849036',
//     projectId: 'mygrow-software-d0a6a',
//     storageBucket: 'mygrow-software-d0a6a.appspot.com',
//     iosClientId: '404278849036-95nmh41dlor7f0mj458fqs9gdnv9rnrd.apps.googleusercontent.com',
//     iosBundleId: 'com.example.mygrowSoftwareProject',
//   );
//
//   static const FirebaseOptions macos = FirebaseOptions(
//     apiKey: 'AIzaSyBJsEoGVQ6M1w285HNUfIvY3b6F_-xi8cc',
//     appId: '1:404278849036:ios:586ea99293773c3d368829',
//     messagingSenderId: '404278849036',
//     projectId: 'mygrow-software-d0a6a',
//     storageBucket: 'mygrow-software-d0a6a.appspot.com',
//     iosClientId: '404278849036-95nmh41dlor7f0mj458fqs9gdnv9rnrd.apps.googleusercontent.com',
//     iosBundleId: 'com.example.mygrowSoftwareProject',
//   );
// }
