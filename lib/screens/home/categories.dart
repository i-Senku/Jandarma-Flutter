import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:jandarma_mevzuat/models/category.dart';
import 'package:jandarma_mevzuat/models/pdf_detail.dart';
import 'package:jandarma_mevzuat/screens/pdf_detail/pdf_detail_view.dart';
import 'package:jandarma_mevzuat/screens/pdf_list/pdf_list_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE9E9E9),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Kategoriler"),
          centerTitle: true,
        ),
        body: pageBuilder(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo,
          currentIndex: selectedIndex,
          onTap: (page) {
            setState(() {
              selectedIndex = page;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Anasayfa',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text(
                'Favoriler',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pageBuilder() {
    if (selectedIndex == 0) {
      return ListView.builder(
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(() => PDFListView(categoryList[index]));
              },
              child: Container(
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
                      categoryList[index].image,
                      fit: BoxFit.fill,
                    )),
                    Positioned(
                      bottom: 0,
                      child: ClipRect(
                        child: new BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: new Container(
                            width: MediaQuery.of(context).size.width,
                            height: 45.0,
                            decoration: new BoxDecoration(
                                color: Colors.black.withOpacity(0.4)),
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
              ),
            );
          });
    } else {
      return ValueListenableBuilder(
      valueListenable: Hive.box<PDFDetail>('favoriList').listenable(),
      builder: (context, Box<PDFDetail> box, widget) {
        var items = box.values.toList();
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (ctx,index){
            var item = items[index];
          return Card(
            child: ListTile(
              onTap: (){
                Get.to(() => ShowPDFView(detail: item,));
              },
              title: Text(item.name),
              trailing: IconButton(icon: Icon(Icons.delete,color: Colors.red,), onPressed: () async{
                await box.deleteAt(index);
              }),
            ),
          );
        });
      },
    );
    }
  }
}
