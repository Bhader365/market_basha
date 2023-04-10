import 'package:app1/pages/details.dart';
import 'package:app1/provider/cart.dart';
import 'package:app1/widgets/constant_colors.dart';
import 'package:app1/widgets/row_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(