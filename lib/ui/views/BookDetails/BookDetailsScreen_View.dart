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
                                '${bookDetails['book']}',
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
                (model.isBusy)
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).primaryColor),
                        ),
                      )
                    : (model.topicList.length > 0)
                        ? Positioned(
                            top: 160,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: LiveList(
                              padding: EdgeInsets.all(16.0),
                              showItemInterval: Duration(milliseconds: 150),
                              showItemDuration: Duration(milliseconds: 350),
                              reAnimateOnVisibility: true,
                              scrollDirection: Axis.vertical,
                              itemCount: model.topicList.length,

                              // itemCount: 5,
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
                                    child: Padding(
                                      padding: EdgeInsets.zero,
                                      child: InkWell(
                                        onTap: () {
                                          model.navigateToTopicDetailsScreen(
                                              model.topicList[index]);
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              32,
                                          height: 64.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFC9FFFF),
                                            border: Border.all(
                                              color: Color(0xFF0196B7),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(32.0),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${model.topicList[index]['topic']}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .copyWith(
                                                    fontFamily: 'Headline',
                                                    color: Color(0xFF0196B7),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 8.0,
                                );
                              },
                            ),
                          )
                        : Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Center(
                              child: Text(
                                'No topics available.',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                      fontFamily: 'Headline',
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
                Positioned(
                  top: 8,
                  right: 8,
                  child: InkWell(
                    onTap: () async {
                      await model.signOut();
                    },
                    child: Container(
                      height: 64.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: Icon(
                        Icons.power_settings_new,
                        size: 48.0,
                        color: Color(0xFF6D6E72),
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
