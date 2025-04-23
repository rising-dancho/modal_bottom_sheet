import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: "Product Name")),
          TextField(decoration: InputDecoration(labelText: "Total Count")),
          TextField(decoration: InputDecoration(labelText: "Price")),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.grey[800],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ),
        ],
      ),
    );
  }
}
