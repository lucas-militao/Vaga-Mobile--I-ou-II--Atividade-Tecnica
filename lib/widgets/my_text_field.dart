import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final bool isNumber;
  final Function onSaved;
  final TextEditingController controller;

  const MyTextField({
    Key key, 
    this.hintText = '', 
    this.validator, 
    this.isNumber = false, 
    this.onSaved,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: OutlineInputBorder(),
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        controller: controller,
      ),
    );
  }
}