import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/BookDetails/BookDetailsScreen_ViewModel.dart';
import 'package:little_mee/constants/const.dart';
import 'package:auto_animated/auto_animated.dart';

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
            // appBar: AppBar(
            //   title: Text(
            //     '${kitDetails['name']}',
            //     style: Theme.of(context).textTheme.headline6.copyWith(
            //           fontFamily: 'Headline',
            //         ),
            //   ),
            //   // titleSpacing: 4.0,
            //   centerTitle: true,
            //   iconTheme: IconThemeData(
            //     size: 40.0,
            //     color: Colors.white,
            //   ),
            //   // automaticallyImplyLeading: false,
            //   backgroundColor: Colors.grey.shade900,
            // ),
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/background.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.lightBlue.withOpacity(0.2),
                  ),
                ),
                Positioned(
                  top: 64,
                  bottom: 0,
                  left: 0,
                  right: 0,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            '${bookDetails['book']}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5
                                                .copyWith(
                                                  fontFamily: 'Headline',
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
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
                                            color: Colors.black,
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
                                              color: Colors.grey.shade800,
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
                      if (bookDetails['worksheet'].length > 0)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Worksheets',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                      fontFamily: 'Headline',
                                      color: Colors.black,
                                    ),
                              ),
                            ),
                            Container(
                              height: 128.0,
                              child: LiveList(
                                padding: EdgeInsets.all(16.0),
                                showItemInterval: Duration(milliseconds: 150),
                                showItemDuration: Duration(milliseconds: 350),
                                reAnimateOnVisibility: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: bookDetails['worksheet'].length,
                                itemBuilder: (
                                  context,
                                  index,
                                  Animation<double> animation,
                                ) {
                                  return FadeTransition(
                                    opacity: Tween<double>(
                                      begin: 0,
                                      end: 1,
                                    ).animate(animation),
                                    child: SlideTransition(
                                      position: Tween<Offset>(
                                        begin: Offset(0, -0.1),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      child: Card(
                                        color: getBackgroundColor(index),
                                        child: InkWell(
                                          onTap: () {
                                            model
                                                .navigateToDocumentViewerScreen(
                                                    kitDetails['name'],
                                                    bookDetails['worksheet']
                                                        [index]['worksheet']);
                                          },
                                          child: Container(
                                            width: 128.0,
                                            // color: Colors.amber,
                                            child: Icon(
                                              Icons.insert_drive_file,
                                              size: 48.0,
                                            ),
                                          ),
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
                        height: 24.0,
                      ),
                      if (bookDetails['topic'].length > 0)
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Topics',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Headline',
                                      color: Colors.black,
                                    ),
                          ),
                        ),
                      if (bookDetails['topic'].length > 0)
                        LiveList(
                          padding: EdgeInsets.all(16.0),
                          showItemInterval: Duration(milliseconds: 150),
                          showItemDuration: Duration(milliseconds: 350),
                          reAnimateOnVisibility: true,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: bookDetails['topic'].length,
                          itemBuilder: (
                            context,
                            index,
                            Animation<double> animation,
                          ) {
                            return FadeTransition(
                              opacity: Tween<double>(
                                begin: 0,
                                end: 1,
                              ).animate(animation),
                              child: SlideTransition(
                                position: Tween<Offset>(
                                  begin: Offset(0, -0.1),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: Card(
                                  color: getBackgroundColor(index),
                                  child: InkWell(
                                    onTap: () {
                                      model.navigateToTopicDetailsScreen(
                                          kitDetails,
                                          bookDetails,
                                          bookDetails['topic'][index]);
                                    },
                                    child: Container(
                                      height: 96.0,
                                      padding: EdgeInsets.all(16.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.wysiwyg,
                                            size: 48.0,
                                          ),
                                          SizedBox(
                                            width: 16.0,
                                          ),
                                          Text(
                                            '${bookDetails['topic'][index]['topic']}',
                                            // 'Topic $index',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .copyWith(
                                                  fontFamily: 'Headline',
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                Positioned(
                  top: 8,
                  // bottom: 0,
                  // left: 0,
                  left: 8,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 32.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  // bottom: 0,
                  // left: 0,
                  right: 8,
                  child: InkWell(
                    onTap: () async {
                      await model.signOut();
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Icon(
                        Icons.exit_to_app,
                        size: 32.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
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
