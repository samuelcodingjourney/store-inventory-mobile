import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:store_inventory/models/product.dart';
import 'package:store_inventory/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:store_inventory/screens/list_product.dart';


class DetailPage extends StatelessWidget {
    String name;
    int amount;
    String description;

    DetailPage({required this.name, required this.amount, required this.description});
@override
Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Name: ${name}'),
        Text('Amount: ${amount}'),
        Text('Description: ${description}'),
        const SizedBox(height: 24.0),
        ElevatedButton(
          onPressed: () => {
            Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage()),
                    )
          },
          child: const Text(
            "Product List",
            style: TextStyle(color: Colors.blue),
          )
        ),

      ],)
    );
    }
}
