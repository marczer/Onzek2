import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  // const textfield({super.key});

  final String label;
  final bool textvisible;

  textfield({required this.label, this.textvisible = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.person_outline_rounded,
            color: Colors.grey.shade200,
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black45),
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: Colors.black45))),
      obscureText: textvisible ? true : false,
    );
  }
}
