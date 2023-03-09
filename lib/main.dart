import 'package:flutter/material.dart';
import 'package:login_with_mob/home.dart';
import 'package:login_with_mob/otp.dart';
import 'package:login_with_mob/phone.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_with_mob/firebase_options.dart';
import 'package:login_with_mob/welcome_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'welcome_screen',
    routes: {
      'phone':(context) => Myphone(),
      'otp':(context) => MyOtp(),
      'home':(context) => MyHome(),
      'welcome_screen':(context) => WelcomeScreen()
    },
  ));
}

