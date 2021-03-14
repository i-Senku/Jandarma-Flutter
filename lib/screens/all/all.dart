import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jandarma_mevzuat/screens/alkol/alkol.dart';
import 'package:jandarma_mevzuat/screens/category/categories.dart';
import 'package:jandarma_mevzuat/screens/h%C4%B1z_limitleri/h%C4%B1z_limitleri.dart';
import 'package:jandarma_mevzuat/screens/hakkinda/hakkindar.dart';
import 'package:jandarma_mevzuat/screens/yas_hesap/yas_hesap.dart';
import 'package:url_launcher/url_launcher.dart';

class AllFeatures extends StatelessWidget {
  final titleList = [
    'Ana Sayfa',
    'Yaş Hesabı',
    'Alkol Kontrol',
    'Hız Limitleri'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Özellikler"),
        actions: [
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => CupertinoActionSheet(
                    title: const Text('Bildirim'),
                    message:
                        const Text('Aşağıdakilerden birini seçebilirsiniz'),
                    actions: [
                      CupertinoActionSheetAction(
                        isDefaultAction: true,
                        child: const Text('Paylaş'),
                        onPressed: () {
                          _launchURL("");
                        },
                      ),
                      CupertinoActionSheetAction(
                        isDefaultAction: true,
                        child: const Text('Uygulama Hakkında'),
                        onPressed: () {
                          Get.to(() => HakkindaView());
                          //Navigator.pop(context);
                        },
                      ),
                      CupertinoActionSheetAction(
                        isDestructiveAction: true,
                        child: const Text('Kapat'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              })
        ],
      ),
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          children: titleList
              .asMap()
              .map((index, value) => MapEntry(
                  index,
                  GestureDetector(
                    onTap: () {
                      if(index == 0){
                        Get.to(() => Categories());
                      }else if(index == 2){
                        Get.to(() => AlkolView());
                      }else if(index == 1){
                        Get.to(() => YasHesap());
                      }else{
                        Get.to(() => HizLimitleriView());
                      }
                    },
                    child: Card(
                      color: Colors.indigo,
                      child: Center(
                        child: Text(
                          value,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  )))
              .values
              .toList(),
        ),
      ),
    );
  }

  Future<void> _launchURL(url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch';
}
