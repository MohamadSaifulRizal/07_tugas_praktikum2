import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;

  ItemDetail({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: item.name,
          child: Image.network(
            item.imageUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            item.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Harga: \$${item.price}', style: TextStyle(fontSize: 18)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Stok: ${item.stock}', style: TextStyle(fontSize: 18)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Rating: ${item.rating}', style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
