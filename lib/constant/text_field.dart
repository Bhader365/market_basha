import 'package:flutter/material.dart';


// ignore: camel_case_types
class Text_field extends StatelessWidget {
  const Text_field({super.key, this.onsaved, required this.hint, required this.secure, required this.type });

final TextInputType type;
final bool secure;
final String hint ;
final void Function(String?)? onsaved;
  @override