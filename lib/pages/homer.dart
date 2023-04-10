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
         backgroundColor: appbargreen,
        title: const Text("Home"),
        actions: const [
          Content(),
        ],
      ),
       drawer: Drawer(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/back.jpg"),
                        fit: BoxFit.cover),
                  ),
                   accountName: Text("BAHADER",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                       accountEmail: Text("Bhader@yahoo.com"),
                       currentAccountPictureSize: Size.square(99),
                  currentAccountPicture: CircleAvatar(
                      radius: 50,
                       backgroundImage: AssetImage("assets/img/1.jpg")),
                ),
                ListTile(
                    title: const Text("Home"),
                     leading: const Icon(Icons.home),
                    onTap: () {}),
                    ListTile(
                    title: const Text("My products"),
                    leading: const Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                      ListTile(
                    title: const Text("About"),
                    leading: const Icon(Icons.help_center),
                    onTap: () {}),
                    ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {}),