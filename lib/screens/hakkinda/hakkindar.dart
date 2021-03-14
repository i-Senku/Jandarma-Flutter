import 'package:flutter/material.dart';

class HakkindaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Uygulama Hakkında'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Uygulama www.mevzuat.gov.tr ve Adli Kolluk El Kitabından faydalanarak yapılmıştır. Uygulama sürekli güncel tutulmaktadır.",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
