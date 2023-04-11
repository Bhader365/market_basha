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
             Text(
              "\$ ${widget.product.price}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
              Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    "New",
                    style: TextStyle(fontSize: 15),
                  ),
                   decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 129, 129),
                      borderRadius: BorderRadius.circular(4)),
                ),
                const SizedBox(
                  width: 8,
                ),
                 Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                  ],
                ),
                 const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children:  [
                      const Icon(
                        Icons.edit_location,
                        size: 25,
                        color: Color.fromARGB(168, 3, 65, 27),
                      ),