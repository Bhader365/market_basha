// ignore: depend_on_referenced_packages
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
                     ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text("Developed by bhader © 2023",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
       body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
            ),
              itemCount: items.length,
            itemBuilder: (BuildContext context, int index)
            return GestureDetector(
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details(
                              product: items[index],
                            )),
                  );
                },
                 child: GridTile(
                  child: Stack(children: [
                    Positioned(
                      right: 0,
                      left: 0,
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.asset(items[index].imgpath),
                      ),
                    ),
                  ]),
                   footer: GridTileBar(
                    trailing: IconButton(
                        color: const Color.fromARGB(255, 62, 94, 70),
                         onPressed: () {
                          classInstancee.add(items[index]);
                        },
                        icon: const Icon(Icons.add)),
                    leading: Text("\$ ${items[index].price}"),
                    title: const Text(""),
                    ),
                ),
              );
            }),
      ),
    );
  }