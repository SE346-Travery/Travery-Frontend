import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/authentication/view/login_screen.dart';
import 'package:travery_frontend/ui/authentication/view/otp_verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Travery', home: const OTPVerificationScreen());
  }
}
