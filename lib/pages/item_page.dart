import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_detail.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: ItemDetail(item: item),
    );
  }
}
