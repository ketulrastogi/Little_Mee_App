import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/DocumentViewer/DocumentViewerScreen_ViewModel.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class DocumentViewerScreenView extends StatelessWidget {
  final Map<String, dynamic> worksheet;

  const DocumentViewerScreenView({Key key, this.worksheet}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DocumentViewerScreenViewModel>.reactive(
      viewModelBuilder: () => DocumentViewerScreenViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Positioned(
                  top: 16,
                  // bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 72.0,
                    child: Center(
                      child: Text(
                        '${worksheet['name']}',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              fontFamily: 'Headline',
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 72.0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: PDF(
                    pageFling: true,
                    autoSpacing: true,
                  ).cachedFromUrl(
                    '${worksheet['worksheet']}',
                    placeholder: (progress) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (error) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/page-not-found.png',
                            scale: 1.5,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'An error occured while opening worksheet. Please try again.',
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      color: Colors.red,
                                      fontFamily: 'Headline',
                                    ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 8,
                  child: InkWell(
                    onTap: () async {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 64.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32.0),
                        child: Image.asset('assets/images/back_arrow.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
