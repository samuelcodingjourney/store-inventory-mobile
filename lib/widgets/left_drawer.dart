import 'package:flutter/material.dart';
import 'package:store_inventory/screens/menu.dart';
import 'package:store_inventory/screens/shoplist_form.dart'; // TODO: Import the ShopFormPage page here
class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
    color: Colors.indigo,
  ),
  child: Column(
    children: [
      Text(
        'Shopping List',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      Padding(padding: EdgeInsets.all(10)),
      Text("Write all your shopping needs here!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            )
          // TODO: Add a text style with center alignment, font size 15, white color, and regular weight
          ),
    ],
  ),// TODO: drawer header section
          ),
          ListTile(
  leading: const Icon(Icons.home_outlined),
  title: const Text('Home Page'),
  // redirect to MyHomePage
  onTap: () {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ));
  },
),
ListTile(
  leading: const Icon(Icons.add_shopping_cart),
  title: const Text('Add Product'),
  // redirect to ShopFormPage
  onTap: () {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ShopFormPage(),
        ));


    /*
    TODO: Create routing to ShopFormPage here
    */
  },
),// TODO: routing section
        ],
      ),
    );
  }
}