import 'package:flutter/material.dart';


class OutlinedTextInputLayout extends StatelessWidget {
  final TextEditingController  nameController;
  final String labelText;
  final String hintText;
  final bool textVisibility;
  const OutlinedTextInputLayout({Key? key, required this.nameController, required this.labelText, required this.hintText, required this.textVisibility}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        obscureText: textVisibility,
        controller: nameController,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText,
            hintText:hintText ),
      ),
    );
  }

}

