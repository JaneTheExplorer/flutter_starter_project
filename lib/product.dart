import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/model.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final List<String> categories = [
    'Food',
    'Fruits',
    'Sports',
    'Vehicle',
  ];
  List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    final filterProducts = productList.where((product) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(product.category);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter Record'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: categories
                    .map(
                      (category) => FilterChip(
                          selected: selectedCategories.contains(Category),
                          label: Text(category),
                          onSelected: (selected) {
                            setState(() {
                              if (selected) {
                                selectedCategories.add(category);
                              } else {
                                selectedCategories.remove(category);
                              }
                            });
                          }),
                    )
                    .toList(),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: filterProducts.length,
              itemBuilder: (context, index) {
                final product = filterProducts[index];

                return Card(
                  elevation: 8.0,
                  margin: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.lightBlue[500]),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      title: Text(
                        product.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: Text(
                        product.category,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
