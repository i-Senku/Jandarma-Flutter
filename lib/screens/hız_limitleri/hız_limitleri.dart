import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jandarma_mevzuat/models/car.dart';

class HizLimitleriView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Hız Limitleri'),
      ),
      body: ListView.builder(
          itemCount: carList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xFF3492eb),
              child: ListTile(
                onTap: () {
                  showCupertinoDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (_) {
                        return CupertinoAlertDialog(
                          title: Text('Hız Limitleri'),
                          content: Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Yerleşim İçinde : ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '${carList[index].yerlesimYeri}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.red),
                                  )
                                ],
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Text(
                                    'Şehirleri Arası : ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text('${carList[index].sehirlerArasi}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.red))
                                ],
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Text(
                                    'Bölünmüş Yollarda : ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text('${carList[index].bolunmusYollar}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.red))
                                ],
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Text(
                                    'Oto Yollarda : ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text('${carList[index].otoYollar == 0 ? 'Giremez' : carList[index].otoYollar}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.red))
                                ],
                              )
                            ],
                          ),
                          actions: [
                            CupertinoDialogAction(
                              onPressed: (){
                                Get.back();
                              },
                              child: Text(
                                'Kapat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                              isDefaultAction: true,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )
                          ],
                        );
                      });
                },
                title: Text(
                  carList[index].name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            );
          }),
    );
  }
}
