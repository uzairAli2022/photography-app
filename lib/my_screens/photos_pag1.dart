import 'package:flutter/material.dart';
import 'package:uzair_ali_app/network_images.dart';

class MyPage1 extends StatelessWidget {
  String url3 =
      "https://cdn.pixabay.com/photo/2017/02/07/16/47/kingfisher-2046453_960_720.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('PhotoGraphy')),
        body: Column(
          children: [
            //   Image.network(url3),
          ],
        ));
  }
}
