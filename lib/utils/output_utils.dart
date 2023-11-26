import 'package:flutter/material.dart';

enum TypeSnackbar { success, error }

void showSnackbar(context, msg, TypeSnackbar type) {
  ScaffoldMessenger.of(context).showSnackBar(snackbar(msg, type));
}

SnackBar snackbar(msg, TypeSnackbar type) {
  return SnackBar(
    backgroundColor: type == TypeSnackbar.success ? Colors.green : Colors.red,
    content: Text("$msg"),
    duration: Duration(seconds: 3), // Durasi tampilan Snackbar
    action: SnackBarAction(
      label: 'Tutup',
      onPressed: () {},
    ),
  );
}

void logO(tag, msg) {
  print("[d] $tag => $msg");
}
