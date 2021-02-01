import 'package:flutter/material.dart';
import 'package:little_mee/ui/widgets/VideoContentCard/VideoContentCardWidget_View.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/TopicDetails/TopicDetailsScreen_ViewModel.dart';
import 'package:flutter/services.dart';

class TopicDetailsScreenView extends StatelessWidget {
  final Map<String, dynamic> kitDetails;
  final Map<String, dynamic> bookDetails;
  final Map<String, dynamic> topicDetails;

  const TopicDetailsScreenView(
      {Key key, this.kitDetails, this.bookDetails, this.topicDetails})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TopicDetailsScreenViewModel>.reactive(
      onModelReady: (model) => model.getTopics(topicDetails['id']),
      viewModelBuilder: () => TopicDetailsScreenViewModel(),
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
                              child: Icon(
                                Icons.wysiwyg,
                                size: 64.0,
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
                                        '${topicDetails != null ? topicDetails['topic'] : 'Topic Name'}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                              fontFamily: 'Headline',
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Container(
                                      width: 150.0,
                                      // padding: EdgeInsets.all(16.0),
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
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Container(
                                      // width: 180.0,
                                      // padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        '${topicDetails != null ? topicDetails['topic'] : 'Topic Description'}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(
                                              fontFamily: 'Body',
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Videoes',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontFamily: 'Headline',
                              ),
                        ),
                      ),
                      Container(
                        height: 200.0,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          scrollDirection: Axis.horizontal,
                          itemCount: model.videoList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Container(
                                width: 330.0,
                                // color: Colors.amber,
                                child: VideoContentCardWidgetView(
                                  videoUrl:
                                      '${model.videoList[index]['video_url_id']}',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Pages',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontFamily: 'Headline',
                              ),
                        ),
                      ),
                      Container(
                        height: 200.0,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          scrollDirection: Axis.horizontal,
                          itemCount: model.htmlList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: InkWell(
                                onTap: () async {
                                  await model.navigateToWebViewerScreen(
                                      model.htmlList[index]['html_content']);
                                  SystemChrome.setPreferredOrientations([
                                    DeviceOrientation.portraitUp,
                                    DeviceOrientation.portraitDown,
                                  ]);
                                },
                                child: Container(
                                  width: 200.0,
                                  // color: Colors.amber,
                                  child: Icon(
                                    Icons.web,
                                    size: 64.0,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Materials',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontFamily: 'Headline',
                              ),
                        ),
                      ),
                      Container(
                        height: 200.0,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          scrollDirection: Axis.horizontal,
                          itemCount: model.pdfList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: InkWell(
                                onTap: () {
                                  model.navigateToDocumentViewerScreen(
                                      kitDetails['name'],
                                      model.pdfList[index]['pdf']);
                                },
                                child: Container(
                                  width: 200.0,
                                  // color: Colors.amber,
                                  child: Icon(
                                    Icons.insert_drive_file,
                                    size: 64.0,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(16.0),
                  //   child: Text(
                  //     'Pages',
                  //     style: Theme.of(context).textTheme.headline6.copyWith(
                  //           fontFamily: 'Headline',
                  //         ),
                  //   ),
                  // ),
                  // ListView(
                  //   padding: EdgeInsets.symmetric(horizontal: 16.0),
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   children: [
                  //     ...List.generate(
                  //       6,
                  //       (index) {
                  //         return Card(
                  //           child: Container(
                  //             padding: EdgeInsets.all(16.0),
                  //             // height: 100.0,
                  //             // color: Colors.amber,
                  //             child: ListTile(
                  // leading: Icon(
                  //   Icons.insert_drive_file,
                  //   size: 40.0,
                  // ),
                  //               title: Text(
                  //                 'Page ${index + 1}',
                  //                 style: Theme.of(context)
                  //                     .textTheme
                  //                     .subtitle1
                  //                     .copyWith(
                  //                       fontFamily: 'Body',
                  //                       fontWeight: FontWeight.bold,
                  //                     ),
                  //               ),
                  //               subtitle: Text(
                  //                 'A paragraph of text with an unassigned link.',
                  //                 style: Theme.of(context)
                  //                     .textTheme
                  //                     .subtitle1
                  //                     .copyWith(
                  //                       fontFamily: 'Body',
                  //                       // fontWeight: FontWeight.bold,
                  //                     ),
                  //               ),
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //   ],
                  // ),
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
