import 'package:app1/pages/home.dart';
import 'package:app1/pages/register.dart';
import 'package:app1/widgets/constant_colors.dart';
import 'package:app1/widgets/text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children:  [
              const Text_field(
                hint: "enter your name",
                secure: false,
                type: TextInputType.text,
                ),
                const SizedBox(
                height: 10,
              ),