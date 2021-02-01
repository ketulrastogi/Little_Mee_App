import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/BookDetails/BookDetailsScreen_ViewModel.dart';

class BookDetailsScreenView extends StatelessWidget {
  final Map<String, dynamic> kitDetails;
  final Map<String, dynamic> bookDetails;

  const BookDetailsScreenView({Key key, this.kitDetails, this.bookDetails})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BookDetailsScreenViewModel>.reactive(
      onModelReady: (model) => model.getTopics(bookDetails['id']),
      viewModelBuilder: () => BookDetailsScreenViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                '${kitDetails['name']}',
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
            body: Center(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  Container(
                    // height: 180.0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 150.0,
                              width: 150.0,
                              padding: EdgeInsets.all(16.0),
                              child: Image.network(
                                '${bookDetails['image']}',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        '${bookDetails['book']}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                              fontFamily: 'Headline',
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Container(
                                      child: Text(
                                        '${int.parse(bookDetails['chaptercount'])} ${int.parse(bookDetails['chaptercount']) > 1 ? 'Chapters' : 'Chapter'}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(
                                              fontFamily: 'Body',
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      '${int.parse(bookDetails['video count'])} ${int.parse(bookDetails['video count']) > 1 ? 'Videos' : 'Video'}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(
                                            fontFamily: 'Body',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150.0,
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'Description',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontFamily: 'Headline',
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // width: 180.0,
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    '${bookDetails['description']}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          fontFamily: 'Body',
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: bookDetails['topic'].length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: InkWell(
                          onTap: () {
                            model.navigateToTopicDetailsScreen(kitDetails,
                                bookDetails, bookDetails['topic'][index]);
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.wysiwyg,
                              size: 48.0,
                            ),
                            title: Text(
                              '${bookDetails['topic'][index]['topic']}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontFamily: 'Headline',
                                  ),
                            ),
                            subtitle: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.videocam,
                                    size: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Container(
                                  child: Text(
                                    '${int.parse(bookDetails['topic'][index]['videocount'])} ${int.parse(bookDetails['topic'][index]['videocount']) > 1 ? 'Videos' : 'Video'}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                          fontFamily: 'Body',
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Container(
                                  child: Icon(
                                    Icons.insert_drive_file,
                                    size: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Container(
                                  child: Text(
                                    '${int.parse(bookDetails['topic'][index]['pdfCount'])} ${int.parse(bookDetails['topic'][index]['pdfCount']) > 1 ? 'PDFs' : 'PDF'}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                          fontFamily: 'Body',
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Container(
                                  child: Icon(
                                    Icons.web,
                                    size: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Container(
                                  child: Text(
                                    '${int.parse(bookDetails['topic'][index]['htmlcount'])} ${int.parse(bookDetails['topic'][index]['htmlcount']) > 1 ? 'Contents' : 'Content'}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                          fontFamily: 'Body',
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  //
                ],
              ),
            ),
            // body: Center(
            //   child: (model.bookList.length > 0)
            //       ? ListView.builder(
            //           padding: EdgeInsets.all(16.0),
            //           itemCount: model.bookList.length,
            //           itemBuilder: (context, index) {
            //             if (index == 0) {
            //               return Column(
            //                 children: [
            //                   Text(
            //                     '${bookDetails['book']}',
            //                     style: Theme.of(context)
            //                         .textTheme
            //                         .headline5
            //                         .copyWith(
            //                           fontFamily: 'Headline',
            //                         ),
            //                   ),
            //                   SizedBox(
            //                     height: 16.0,
            //                   ),
            //                   Card(
            //                     child: Container(
            //                       height: 180.0,
            //                       child: Row(
            //                         children: [
            //                           Container(
            //                             height: 150.0,
            //                             width: 150.0,
            //                             padding: EdgeInsets.all(16.0),
            //                             child: Image.network(
            //                               '${model.bookList[index]['image']}',
            //                               fit: BoxFit.fill,
            //                             ),
            //                           ),
            //                           Expanded(
            //                             child: Container(
            //                               padding: EdgeInsets.all(16.0),
            //                               child: Column(
            //                                 mainAxisAlignment:
            //                                     MainAxisAlignment.start,
            //                                 crossAxisAlignment:
            //                                     CrossAxisAlignment.start,
            //                                 children: [
            //                                   Container(
            //                                     child: Text(
            //                                       '${model.bookList[index]['book']}',
            //                                       style: Theme.of(context)
            //                                           .textTheme
            //                                           .headline5
            //                                           .copyWith(
            //                                             fontFamily: 'Headline',
            //                                           ),
            //                                     ),
            //                                   ),
            //                                   SizedBox(
            //                                     height: 8.0,
            //                                   ),
            //                                   Container(
            //                                     child: Text(
            //                                       '10 Chapters',
            //                                       style: Theme.of(context)
            //                                           .textTheme
            //                                           .subtitle1
            //                                           .copyWith(
            //                                             fontFamily: 'Body',
            //                                           ),
            //                                     ),
            //                                   ),
            //                                   SizedBox(
            //                                     height: 8.0,
            //                                   ),
            //                                   Text(
            //                                     '6 Videos',
            //                                     style: Theme.of(context)
            //                                         .textTheme
            //                                         .subtitle1
            //                                         .copyWith(
            //                                           fontFamily: 'Body',
            //                                         ),
            //                                   ),
            //                                   Spacer(),
            //                                   Container(
            //                                     child: MaterialButton(
            //                                       padding: EdgeInsets.symmetric(
            //                                           horizontal: 48.0),
            //                                       shape: RoundedRectangleBorder(
            //                                         borderRadius:
            //                                             BorderRadius.circular(
            //                                                 16.0),
            //                                       ),
            //                                       child: Text(
            //                                         'Open Book',
            //                                         style: Theme.of(context)
            //                                             .textTheme
            //                                             .button
            //                                             .copyWith(
            //                                               fontFamily: 'Body',
            //                                             ),
            //                                       ),
            //                                       color: Theme.of(context)
            //                                           .primaryColor,
            //                                       textColor: Colors.white,
            //                                       onPressed: () {
            //                                         // model.navigateToBooksScreen();
            //                                       },
            //                                     ),
            //                                   ),
            //                                 ],
            //                               ),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               );
            //             }

            //             return Card(
            //               child: Container(
            //                 height: 180.0,
            //                 child: Row(
            //                   children: [
            //                     Container(
            //                       height: 150.0,
            //                       width: 150.0,
            //                       padding: EdgeInsets.all(16.0),
            //                       child: Image.network(
            //                         '${model.bookList[index]['image']}',
            //                         fit: BoxFit.fill,
            //                       ),
            //                     ),
            //                     Expanded(
            //                       child: Container(
            //                         padding: EdgeInsets.all(16.0),
            //                         child: Column(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.start,
            //                           crossAxisAlignment:
            //                               CrossAxisAlignment.start,
            //                           children: [
            //                             Container(
            //                               child: Text(
            //                                 '${model.bookList[index]['book']}',
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .headline5
            //                                     .copyWith(
            //                                       fontFamily: 'Headline',
            //                                     ),
            //                               ),
            //                             ),
            //                             SizedBox(
            //                               height: 8.0,
            //                             ),
            //                             Container(
            //                               child: Text(
            //                                 '10 Chapters',
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .subtitle1
            //                                     .copyWith(
            //                                       fontFamily: 'Body',
            //                                     ),
            //                               ),
            //                             ),
            //                             SizedBox(
            //                               height: 8.0,
            //                             ),
            //                             Text(
            //                               '6 Videos',
            //                               style: Theme.of(context)
            //                                   .textTheme
            //                                   .subtitle1
            //                                   .copyWith(
            //                                     fontFamily: 'Body',
            //                                   ),
            //                             ),
            //                             Spacer(),
            //                             Container(
            //                               child: MaterialButton(
            //                                 padding: EdgeInsets.symmetric(
            //                                     horizontal: 48.0),
            //                                 shape: RoundedRectangleBorder(
            //                                   borderRadius:
            //                                       BorderRadius.circular(16.0),
            //                                 ),
            //                                 child: Text(
            //                                   'Open Book',
            //                                   style: Theme.of(context)
            //                                       .textTheme
            //                                       .button
            //                                       .copyWith(
            //                                         fontFamily: 'Body',
            //                                       ),
            //                                 ),
            //                                 color:
            //                                     Theme.of(context).primaryColor,
            //                                 textColor: Colors.white,
            //                                 onPressed: () {
            //                                   // model.navigateToBooksScreen();
            //                                 },
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             );
            //           },
            //         )
            //       : Center(
            //           child: Text(
            //             'No Kits Available',
            //             style: Theme.of(context).textTheme.headline6.copyWith(
            //                   fontFamily: 'Headline',
            //                 ),
            //           ),
            //         ),
            // ),
          ),
        );
      },
    );
  }
}
