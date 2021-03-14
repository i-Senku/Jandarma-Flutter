import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlkolView extends StatefulWidget {
  @override
  _AlkolViewState createState() => _AlkolViewState();
}

class _AlkolViewState extends State<AlkolView> {
  int segmentedControlGroupValue = 0;

  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("Hususi Otomobil"),
    1: Text("Diğer")
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alkol Kontrol'),backgroundColor: Colors.indigo,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              "1.00 Promil = 100 promil olarak baz alınmıştır",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 36,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Alkol Durumu : ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Miktar'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 36,),
            CupertinoSlidingSegmentedControl(
                groupValue: segmentedControlGroupValue,
                children: myTabs,
                onValueChanged: (i) {
                  setState(() {
                    segmentedControlGroupValue = i;
                  });
                }),
                SizedBox(height: 36,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){

                    }, child: Center(child: Text('Uygulama'),),),
                    ElevatedButton(onPressed: (){
                      
                    }, child: Center(child: Text('Trafik Kazası'),),)
                  ],
                ),

          ],
        ),
      ),
    );
  }
}
