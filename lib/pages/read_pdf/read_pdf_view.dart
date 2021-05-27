import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class ReadPdfView extends StatefulWidget {
  @override
  _ReadPdfViewState createState() => _ReadPdfViewState();
}

class _ReadPdfViewState extends State<ReadPdfView> {
  static final int _initialPage = 1;
  int _actualPageNumber = _initialPage, _allPagesCount = 0;
  bool isSampleDoc = true;
  final PdfController _pdfController = PdfController(
    document: PdfDocument.openAsset('assets/MySQL.pdf'),
    initialPage: _initialPage,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PdfView example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_before),
            onPressed: () {
              _pdfController.previousPage(
                curve: Curves.ease,
                duration: Duration(milliseconds: 100),
              );
            },
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '$_actualPageNumber/$_allPagesCount',
              style: TextStyle(fontSize: 22),
            ),
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              _pdfController.nextPage(
                curve: Curves.ease,
                duration: Duration(milliseconds: 100),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              if (isSampleDoc) {
                _pdfController
                    .loadDocument(PdfDocument.openAsset('assets/MySQL.pdf'));
              } else {
                _pdfController
                    .loadDocument(PdfDocument.openAsset('assets/MYSQL.pdf'));
              }
              isSampleDoc = !isSampleDoc;
            },
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: PdfView(
          scrollDirection: Axis.vertical,
          documentLoader: Center(child: CircularProgressIndicator()),
          pageLoader: Center(child: CircularProgressIndicator()),
          controller: _pdfController,
          onDocumentLoaded: (document) {
            setState(() {
              _allPagesCount = document.pagesCount;
            });
          },
          onPageChanged: (page) {
            setState(() {
              _actualPageNumber = page;
            });
          },
          renderer: (PdfPage page) => page.render(
            width: page.width * 5,
            height: page.height * 2,
            // format: PdfPageFormat.JPEG,
            backgroundColor: '#FFFFFF',
          ),
        ),
      ),
    );
  }
}
