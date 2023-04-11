import 'package:app1/provider/cart.dart';
import 'package:app1/widgets/row_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/constant_colors.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

 @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbargreen,
        title: const Text("Check Out"),
        actions: const [
          Content(),
        ],
      ),