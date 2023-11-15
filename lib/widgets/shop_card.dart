import 'package:flutter/material.dart';
import 'package:store_inventory/screens/shoplist_form.dart';

class ShopItem {
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}
class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {Key? key}); // Constructor

  @override
  Widget build(BuildContext context) {
    var colors = Colors.indigo;
    var identify = '${this.item.name}';
    switch(identify) {
      case "View Products": colors = Colors.yellow; 
      break;

      case "Add Product": colors = Colors.blue; 
      break;

      case "Logout": colors = Colors.red; 
      break;

      default: colors= colors; 
      break;
    }
    return Material(
      color: colors,
      child: InkWell(
        // Responsive touch area
        onTap: () {
          // Show a SnackBar when clicked
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("You clicked the ${item.name} button")));
          // Navigate to the appropriate route (depending on the button type)
          if (item.name == "Add Product") {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => ShopFormPage(),
        ));          // TODO: Use Navigator.push to navigate to a MaterialPageRoute that encompasses ShopFormPage.
            } 
  },
        
        
        child: Container(
          // Container to hold Icon and Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

