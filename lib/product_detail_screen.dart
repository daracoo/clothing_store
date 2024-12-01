import 'package:flutter/material.dart';
import 'models/clothing_item.dart';

class ProductDetailScreen extends StatelessWidget {
  final ClothingItem item;

  const ProductDetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.imageUrl),
              const SizedBox(height: 16),
              Text(
                item.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(item.description),
              const SizedBox(height: 16),
              Text(
                'Price: \$${item.price.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
