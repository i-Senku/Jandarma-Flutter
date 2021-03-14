import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jandarma_mevzuat/models/pdf_detail.dart';
import 'package:jandarma_mevzuat/screens/all/all.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  
  await Hive.initFlutter();
  Hive.registerAdapter(PDFDetailAdapter());
  Hive.openBox<PDFDetail>('favoriList');
  runApp(GetMaterialApp(home: AllFeatures(),debugShowCheckedModeBanner: false,));
}
