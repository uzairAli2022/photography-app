import 'package:flutter/material.dart';
import 'package:uzair_ali_app/list_items.dart';
import 'package:uzair_ali_app/my_screens/item_widget.dart';

class MyPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(50, (index) => CatalogMain.products[0]);
    return Scaffold(
        appBar: AppBar(title: Text('PhotoGraphy')),
        body: Card(
          child: Container(
              padding: EdgeInsets.all(12),
              height: 100,
              width: 450,
              child: ListView.builder(
                  itemCount: dumyList.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      products: dumyList[index],
                    );
                  })),
        ));
  }
}
