import 'package:flutter/material.dart';
import 'package:little_mee/ui/widgets/VideoContentCard/VideoContentCardWidget_View.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/TopicDetails/TopicDetailsScreen_ViewModel.dart';
import 'package:flutter/services.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:little_mee/constants/const.dart';
import 'package:little_mee/ui/widgets/HamburgerMenu/HamburgerMenuWidget_View.dart';

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
      // onModelReady: (model) => model.getTopics(topicDetails['id']),
      viewModelBuilder: () => TopicDetailsScreenViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
            floatingActionButton: HamburgerMenuWidgetView(),
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 72,
                  right: 72,
                  child: Container(
                    child: SizedBox(
                      height: 150.0,
                      width: 300.0,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: 300.0,
                              height: 100.0,
                              padding: EdgeInsets.only(top: 16.0),
                              child: Image.asset(
                                'assets/images/cloud_big.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Text(
                                '${topicDetails['topic']}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                      fontFamily: 'Headline',
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ListView(
                    padding: EdgeInsets.only(
                      top: 16.0,
                      left: 16.0,
                      bottom: 88.0,
                      right: 16.0,
                    ),
                    children: [
                      if (topicDetails['video_array'].length > 0)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Videos',
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
                              height: 200.0,
                              child: LiveList(
                                showItemInterval: Duration(milliseconds: 150),
                                showItemDuration: Duration(milliseconds: 350),
                                reAnimateOnVisibility: true,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                scrollDirection: Axis.horizontal,
                                // itemCount: 5,
                                itemCount: topicDetails['video_array'].length,
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
                                        // color: getBackgroundColor(index),
                                        child: Container(
                                          width: 330.0,
                                          child: VideoContentCardWidgetView(
                                            // videoUrl: 'Ts7JlS3M2S4',
                                            videoId:
                                                '${topicDetails['video_array'][index]['video_url_id']}',
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
                      if (topicDetails['html_array'].length > 0)
                        SizedBox(
                          height: 16.0,
                        ),
                      if (topicDetails['html_array'].length > 0)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Flash Cards',
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
                              height: 200.0,
                              child: LiveList(
                                showItemInterval: Duration(milliseconds: 150),
                                showItemDuration: Duration(milliseconds: 350),
                                reAnimateOnVisibility: true,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                scrollDirection: Axis.horizontal,
                                // itemCount: 5,
                                itemCount: topicDetails['html_array'].length,
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
                                        // color: getBackgroundColor(index),
                                        child: InkWell(
                                          onTap: () async {
                                            await model
                                                .navigateToWebViewerScreen(
                                                    topicDetails['html_array']
                                                            [index]
                                                        ['html_content']);
                                            SystemChrome
                                                .setPreferredOrientations([
                                              DeviceOrientation.portraitUp,
                                              DeviceOrientation.portraitDown,
                                            ]);
                                          },
                                          child: Container(
                                            width: 200.0,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.web,
                                                  size: 64.0,
                                                ),
                                                SizedBox(
                                                  height: 8.0,
                                                ),
                                                Text(
                                                  '${topicDetails['html_array'][index]['name']}',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6
                                                      .copyWith(
                                                        fontFamily: 'Body',
                                                        color: Colors.black,
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
                            ),
                          ],
                        ),
                      // if (model.htmlList.length > 0)
                      // SizedBox(
                      //   height: 16.0,
                      // ),
                      // // if (model.htmlList.length > 0)
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.stretch,
                      //   children: [
                      //     Container(
                      //       padding: EdgeInsets.all(16.0),
                      //       child: Text(
                      //         'Activities',
                      //         style: Theme.of(context)
                      //             .textTheme
                      //             .headline6
                      //             .copyWith(
                      //               fontFamily: 'Headline',
                      //               color: Colors.black,
                      //             ),
                      //       ),
                      //     ),
                      //     Container(
                      //       height: 200.0,
                      //       child: LiveList(
                      //         showItemInterval: Duration(milliseconds: 150),
                      //         showItemDuration: Duration(milliseconds: 350),
                      //         reAnimateOnVisibility: true,
                      //         padding: EdgeInsets.symmetric(horizontal: 16.0),
                      //         scrollDirection: Axis.horizontal,
                      //         // itemCount: model.htmlList.length,
                      //         itemCount: 5,
                      //         itemBuilder: (
                      //           context,
                      //           index,
                      //           Animation<double> animation,
                      //         ) {
                      //           return FadeTransition(
                      //             opacity: Tween<double>(
                      //               begin: 0,
                      //               end: 1,
                      //             ).animate(animation),
                      //             child: SlideTransition(
                      //               position: Tween<Offset>(
                      //                 begin: Offset(0, -0.1),
                      //                 end: Offset.zero,
                      //               ).animate(animation),
                      //               child: Card(
                      //                 // color: getBackgroundColor(index),
                      //                 child: InkWell(
                      //                   onTap: () async {
                      //                     await model.navigateToWebViewerScreen(
                      //                         model.htmlList[index]
                      //                             ['html_content']);
                      //                     SystemChrome
                      //                         .setPreferredOrientations([
                      //                       DeviceOrientation.portraitUp,
                      //                       DeviceOrientation.portraitDown,
                      //                     ]);
                      //                   },
                      //                   child: Container(
                      //                     width: 200.0,
                      //                     child: Icon(
                      //                       Icons.web,
                      //                       size: 64.0,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //             ),
                      //           );
                      //         },
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
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
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/images/footer.png'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
