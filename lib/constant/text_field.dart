import 'package:flutter/material.dart';


// ignore: camel_case_types
class Text_field extends StatelessWidget {
  const Text_field({super.key, this.onsaved, required this.hint, required this.secure, required this.type });

final TextInputType type;
final bool secure;
final String hint ;
final void Function(String?)? onsaved;
  @override
   Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'field is required';
        }else{
          return null;
        }
      },
      keyboardType: type,
      cursorColor:Colors.black,
      obscureText: secure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:const TextStyle(
          color: Colors.blue,
        ),