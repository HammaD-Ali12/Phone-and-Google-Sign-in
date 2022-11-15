import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otp_verification/Services/HomeScreen.dart';
import 'package:otp_verification/Services/otp_screen.dart';
import 'package:otp_verification/Services/phone_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'phone': (context) => MyPhone(),
        'otp': (context) => MyOtp(),
        'home': (context) => HomePage()
      },
    ),
  );
}
