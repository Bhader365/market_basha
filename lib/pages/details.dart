// ignore_for_file: sort_child_properties_last

import 'package:app1/widgets/constant_colors.dart';
import 'package:app1/widgets/item.dart';
import 'package:app1/widgets/row_content.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}
class _DetailsState extends State<Details> {
  // Details({super.key});
  bool isShowMore = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbargreen,
        title: const Text("Details Screen"),
        actions: const [
          Content(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(widget.product.imgpath),
            const SizedBox(
              height: 10,
            ),