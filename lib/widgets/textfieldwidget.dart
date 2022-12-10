import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller, {required String? Function(dynamic value) validator}) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.black54),
      filled: false,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 3, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}