import 'package:app1/pages/check_out.dart';
import 'package:app1/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return  Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 25,
              left: 2,
              child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.circle),
                  child: Text(
                    "${classInstancee.selectitems.length}",
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  )),
            ),
             IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                    return const Checkout();}),
                    );
                }, icon: const Icon(Icons.add_shopping_cart)),
          ],
        ),
         Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text("\$ ${classInstancee.coast}"),
        )