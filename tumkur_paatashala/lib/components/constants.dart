import 'package:flutter/material.dart';


class kTextField extends StatelessWidget {
  TextEditingController controller = TextEditingController();



  @override
  
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: "Email",
          filled: true,
          fillColor: Color.fromRGBO(52, 41, 73, 1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          )),
    );
  }
}
