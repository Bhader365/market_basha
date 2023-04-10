import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(