import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/DocumentViewer/DocumentViewerScreen_ViewModel.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class DocumentViewerScreenView extends StatelessWidget {
  final String title;
  final String url;

  const DocumentViewerScreenView({Key key, this.title, this.url})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DocumentViewerScreenViewModel>.reactive(
      viewModelBuilder: () => DocumentViewerScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text(
                '$title',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontFamily: 'Headline',
                    ),
              ),
              // titleSpacing: 4.0,
              centerTitle: true,
              iconTheme: IconThemeData(
                size: 40.0,
                color: Colors.white,
              ),
              // automaticallyImplyLeading: false,
              backgroundColor: Colors.grey.shade900,
            ),
            body: PDF().cachedFromUrl(
              '$url',
              placeholder: (progress) => Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (error) => Center(
                child: Text(
                  error.toString(),
                ),
              ),
            ));
      },
    );
  }
}
