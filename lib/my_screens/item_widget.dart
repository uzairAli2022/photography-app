import 'package:flutter/material.dart';
import 'package:uzair_ali_app/home_pge.dart';
import 'package:uzair_ali_app/list_items.dart';
import 'package:uzair_ali_app/routes.dart';

class ItemWidget extends StatelessWidget {
  final Items products;

  const ItemWidget({Key? key, required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      color: Colors.deepPurple.withOpacity(0.3),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(18),
        child: ListTile(
          onTap: () async {
            await Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          leading: Image.network(products.pic),
          title: Text(
            products.name,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(products.comp),
          trailing: Text(
            products.price,
            style: TextStyle(color: Colors.deepPurple, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
