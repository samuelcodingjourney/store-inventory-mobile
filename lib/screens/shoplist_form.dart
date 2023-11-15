import 'package:flutter/material.dart';
import 'package:store_inventory/widgets/left_drawer.dart'; // TODO: Import the previously created drawer

class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
    @override
    Widget build(BuildContext context) {
        return Scaffold(
  appBar: AppBar(
    title: const Center(
      child: Text(
        'Add Product Form',
      ),
    ),
    backgroundColor: Colors.indigo,
    foregroundColor: Colors.white,
  ),
  drawer: const LeftDrawer(),
  // TODO: Add the previously created drawer here
  body: Form(
    key: _formKey,
    child: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Product Name",
              labelText: "Product Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onChanged: (String? value) {
              setState(() {
                _name = value!;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Name cannot be empty!";
              }
              return null;
            },
          ),
          
        ),
        Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Price",
      labelText: "Price",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _price = int.parse(value!);
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Price cannot be empty!";
      }
      if (int.tryParse(value) == null) {
        return "Price must be a number!";
      }
      return null;
    },
  ),
),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Description",
              labelText: "Description",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onChanged: (String? value) {
              setState(() {
                _description = value!;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Description cannot be empty!";
              }
              return null;
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
              MaterialStateProperty.all(Colors.indigo),
            ),
          onPressed: () {
          if (_formKey.currentState!.validate()) {showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Product successfully saved'),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text('Name: $_name'),
                  Text('Price: $_price'),
                  Text('Description: $_description')
                  // TODO: Display other values
                ],
              ),
            ),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    _formKey.currentState!.reset();}
          },
          child: const Text(
          "Save",
          style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      ),
        ]
    ),
  ),
  )
);
    }
}