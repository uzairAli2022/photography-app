import 'package:flutter/material.dart';
import 'package:uzair_ali_app/list_items.dart';

class ItemWidget extends StatelessWidget {
  final Items products;

  const ItemWidget({Key? key, required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image.network(products.image),
      title: Text(products.name),
      subtitle: Text(products.desc),
      trailing: Text(products.price),
    );
  }
}
