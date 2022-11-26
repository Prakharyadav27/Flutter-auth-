import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
//import 'package:testapk2/homepage.dart';
import 'package:testapk2/phone.dart';
import 'package:testapk2/showInfo.dart';
import 'package:testapk2/update_profile_screen.dart';
import 'package:testapk2/verify.dart';

//import 'Display.dart';
//FirebaseMessaging _firebaseMessaging =x FirebaseMessaging.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    initialRoute: 'updatescreen',
    debugShowCheckedModeBanner: false,
    routes: {
      // Display.id: (context) => Display(),
      'phone': (context) => const MyPhone(),
      'verify': (context) => const MyVerify(),
      'updatescreen': (context) => ProfilePage(),
      'showInfoProfile': (context) => ShowProfile()
      // 'home': (context) => MyHome(),
    },
  ));
}
