import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jandarma_mevzuat/models/category.dart';

class HomePage extends StatelessWidget {

  final categoryList = [
    Category(name: 'İDARİ',imagePath: 'assets/category/idari.jpg'),
    Category(name: 'KAVRAMLAR',imagePath: 'assets/category/kavramlar.jpg'),
    Category(name: 'TUTANAK',imagePath: 'assets/category/tutanak.jpg'),
    Category(name: 'YÖNETMELİK',imagePath: 'assets/category/tutanak.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD9CFCE),
        appBar: AppBar(
          title: Text("Kategoriler"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  categoryList[index].imagePath,
                  fit: BoxFit.fill,
                )),
                Positioned(
                  bottom: 0,
                  child: ClipRect(
                    child: new BackdropFilter(
                      filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: new Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40.0,
                        decoration: new BoxDecoration(
                            color: Colors.grey.withOpacity(0.6)),
                        child: new Center(
                          child: new Text(
                            categoryList[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
