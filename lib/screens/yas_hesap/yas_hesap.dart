import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class YasHesap extends StatefulWidget {
  @override
  _YasHesapState createState() => _YasHesapState();
}

class _YasHesapState extends State<YasHesap> {
  DateTime selectedDate;
  String dateString = "";
  Duration difference = Duration();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Yas Hesaplama'),backgroundColor: Colors.indigo,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Doğum Tarihi : ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                ElevatedButton(
                    onPressed: () async {
                      var picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2029));
                      if (picked != null)
                        setState(() {
                          selectedDate = picked;
                          dateString = DateFormat.yMd().format(selectedDate);
                        });
                    },
                    child: Text('Tarih Seç')),
              ],
            ),
          ),
          Container(
            width: Get.width,
            height: 50,
            color: Colors.grey.shade300,
            child: Center(
              child: Text(dateString),
            ),
          ),
          SizedBox(height: 16,),
          ElevatedButton.icon(onPressed: (){
            if(selectedDate != null){
              setState(() {
                difference = DateTime.now().difference(selectedDate);
              });
            }
            
          }, icon: Icon(Icons.calculate), label: Text('Hesapla')),
          SizedBox(height: 16,),
          Text("Yıl : ${difference.inDays ~/ 365} - Ay : ${difference.inDays ~/ 30} - Gün : ${difference.inDays}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.indigo),),
          SizedBox(height: 16,),
          Text(difference.inDays ~/ 365  > 15 ? "İdari yaptırım uygulanabilir." : "İdari yaptırım uygulanamaz.",style: TextStyle(color: difference.inDays ~/ 365 > 15 ? Colors.green : Colors.red,fontWeight: FontWeight.bold,fontSize: 18)),
        ],
      ),
    );
  }
}
