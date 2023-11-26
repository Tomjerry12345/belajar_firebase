import 'package:belajar_firebase/component/input/input_component.dart';
import 'package:belajar_firebase/utils/output_utils.dart';
import 'package:belajar_firebase/utils/position_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // final fs = FirebaseUtilitas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputComponent(
              label: "Email",
              controller: email,
            ),
            V(16),
            InputComponent(
              label: "Pasword",
              controller: password,
            ),
            V(32),
            ElevatedButton(
                onPressed: () async {
                  try {
                    await _auth.signInWithEmailAndPassword(
                        email: email.text, password: password.text);
                    showSnackbar(
                        context, "Berhasil login", TypeSnackbar.success);
                  } on FirebaseAuthException catch (e) {
                    print(e);
                    showSnackbar(context, e.code, TypeSnackbar.error);
                  }
                },
                child: Text("Login")),
            V(16),
            ElevatedButton(
                onPressed: () async {
                  try {
                    await _auth.createUserWithEmailAndPassword(
                        email: email.text, password: password.text);
                    showSnackbar(
                        context, "Berhasil buat user", TypeSnackbar.success);
                  } on FirebaseAuthException catch (e) {
                    print(e);
                    showSnackbar(context, e.code, TypeSnackbar.error);
                  }
                },
                child: Text("Buat User"))
          ],
        ),
      ),
    );
  }
}
