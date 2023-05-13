// import 'package:firebase_database/firebase_database.dart';
//
// class RealtimeDatabaseService {
//   static Future<void> saveData(String uid, String data) async {
//     try {
//       final reference = FirebaseDatabase.instance.ref().child('users').child(uid);
//       await reference.set({'data': data});
//       print('Data saved to Realtime Database');
//     } catch (e) {
//       print('Error saving data to Realtime Database: $e');
//     }
//   }
// }
