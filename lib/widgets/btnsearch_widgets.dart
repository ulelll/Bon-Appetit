import 'package:flutter/material.dart';
//home 

class BtnsearchWidgets extends StatelessWidget {
  const BtnsearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search, color: Color.fromARGB(255, 248, 226, 82)),
        labelText: 'Search',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 248, 226, 82),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Color.fromARGB(255, 120, 43, 136)), 
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Color.fromARGB(255, 248, 226, 82)), 
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Color.fromARGB(255, 120, 43, 136)), 
        ),
      ),
    );
  }
}
