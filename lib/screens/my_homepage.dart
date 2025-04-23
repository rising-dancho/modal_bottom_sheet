import 'package:flutter/material.dart';
import 'package:modal_botom_sheet/widgets/add_product.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openAddProductModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return AddProduct();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Add Product Snippet'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "Homescreen",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openAddProductModal(context),
        tooltip: 'Add Product',
        child: const Icon(Icons.add),
      ),
    );
  }
}
