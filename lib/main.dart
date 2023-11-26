import 'package:belajar_firebase/screen/dashboard/dashboard_screen.dart';
import 'package:belajar_firebase/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: LoginScreen(),
      home: DashboardScreen(),
    );
  }
}
