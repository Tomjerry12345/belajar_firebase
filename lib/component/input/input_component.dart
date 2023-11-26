import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const InputComponent(
      {super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: label),
      controller: controller,
    );
  }
}
