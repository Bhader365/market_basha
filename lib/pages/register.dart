import 'package:app1/pages/login.dart';
import 'package:app1/widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/constant_colors.dart';

class Regiser extends StatelessWidget {
  const Regiser({super.key});

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const Text_field(
                hint: "Enter your username",
                secure: false,
                type: TextInputType.text,
              ),