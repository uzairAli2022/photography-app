import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uzair_ali_app/list_items.dart';
import 'package:uzair_ali_app/my_screens/item_widget.dart';
import 'dart:convert';

class MyPage1 extends StatefulWidget {
  @override
  State<MyPage1> createState() => _MyPage1State();
}

class _MyPage1State extends State<MyPage1> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("load_jason/myfile.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["myfile"];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(20, (index) => CatalogMain.products[0]);
    return Scaffold(
      appBar: AppBar(title: Text('PhotoGraphy')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dumyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                products: dumyList[index],
              );
            }),
      ),
    );
  }
}
