import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:jandarma_mevzuat/models/pdf_detail.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class ShowPDFView extends StatefulWidget {
  final PDFDetail detail;

  const ShowPDFView({Key key, this.detail}) : super(key: key);

  @override
  _ShowPDFViewState createState() => _ShowPDFViewState();
}

class _ShowPDFViewState extends State<ShowPDFView> {
  PdfViewerController _pdfViewerController;
  TextEditingController controller;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    controller = TextEditingController();
    super.initState();
  }

  PdfTextSearchResult _searchResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          actions: [
            Expanded(child: searchBar()),
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () async {
                if (controller.text.isNotEmpty) {
                  _searchResult = await _pdfViewerController?.searchText(
                      controller.text,
                      searchOption: TextSearchOption.caseSensitive);
                  setState(() {});
                }
              },
            ),
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.clear,
                ),
                onPressed: () {
                  setState(() {
                    _searchResult.clear();
                    controller.clear();
                  });
                },
              ),
            ),
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_up,
                ),
                onPressed: () {
                  _searchResult?.previousInstance();
                },
              ),
            ),
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                ),
                onPressed: () {
                  _searchResult?.nextInstance();
                },
              ),
            ),
          ],
        ),
        body: SfPdfViewer.asset(widget.detail.path,
            controller: _pdfViewerController,
            enableDocumentLinkAnnotation: true,
            canShowPaginationDialog: true,
            searchTextHighlightColor: Colors.red),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () async{
                await Hive.box<PDFDetail>('favoriList').add(widget.detail);
                Get.snackbar('Bilgi', 'Başarıyla Eklendi');
              },
              child: Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: (){
                Get.back();
              },
              child: Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ));
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(8, 0.0, 0, 0),
            hintText: 'Kelime Ara',
            filled: true,
            fillColor: Color(0xFFe8e3e3),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
