import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jandarma_mevzuat/models/category.dart';
import 'package:jandarma_mevzuat/models/pdf_detail.dart';
import 'package:jandarma_mevzuat/screens/pdf_detail/pdf_detail_view.dart';

class PDFListView extends StatelessWidget {

  final Category category;
  PDFListView(this.category);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE9E9E9),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text(category.name),
        ),
        body: ListView.builder(
          itemCount: getList().length,
          itemBuilder: (context,index){
          return Card(
            child: ListTile(
              onTap: (){
                Get.to(() => ShowPDFView(detail: getList()[index],));
              },
              trailing: Icon(Icons.dashboard_customize),
              title: Text(getList()[index].name,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),
          );
        }),
      ),
    );
  }

  List<PDFDetail> getList(){
    switch (category.type) {
      case CategoryType.KANUNLAR:
        return kanunlarDetailList;
      case CategoryType.YONETMELIK:
        return yonetmelikDetailList;  
      case CategoryType.IDARIPARA:
        return idariParaList;   
      case CategoryType.SUCTASNIFLERI:
        return sucTasnifleriList; 
      case CategoryType.KAVRAMLAR:
        return kavramlarList;
      case CategoryType.TAHKIKAT:
        return tahkikatList;     
      default:
        return kanunlarDetailList;
    }
  }


}
