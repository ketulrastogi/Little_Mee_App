import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/widgets/Drawer.dart';
import 'package:little_mee/ui/views/home/HomeScreen_ViewModel.dart';

class HomeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      onModelReady: (model) => model.getUserKit(),
      viewModelBuilder: () => HomeScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Little Mee',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontFamily: 'Headline',
                  ),
            ),
            // titleSpacing: 4.0,
            centerTitle: true,
            // iconTheme: IconThemeData(
            //   size: 40.0,
            //   color: Colors.white,
            // ),
            backgroundColor: Colors.grey.shade900,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                onPressed: () async {
                  await model.signOut();
                },
              ),
            ],
            // automaticallyImplyLeading: false,
          ),
          // drawer: buildDrawer(context, model.userProfile),
          // bottomNavigationBar: BottomNavigationBar(
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home),
          //       label: 'Home',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.bookmarks),
          //       label: 'Books',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.person),
          //       label: 'Account',
          //     ),
          //   ],
          // ),
          body: (model.userKitList.length > 0)
              ? LiveList(
                  padding: EdgeInsets.all(16.0),
                  showItemInterval: Duration(milliseconds: 150),
                  showItemDuration: Duration(milliseconds: 350),
                  reAnimateOnVisibility: true,
                  scrollDirection: Axis.vertical,
                  itemCount: model.userKitList.length,
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
                          child: Card(
                            child: Container(
                              height: 150.0,
                              child: Row(
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    padding: EdgeInsets.all(16.0),
                                    child: Image.network(
                                      '${model.userKitList[index]['image']}',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              '${model.userKitList[index]['name']}',
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
                                            child: Row(
                                              children: [
                                                Icon(Icons.bookmark),
                                                SizedBox(
                                                  width: 8.0,
                                                ),
                                                Text(
                                                  '${model.userKitList[index]['books count']} ${int.parse(model.userKitList[index]['books count']) > 1 ? 'Books' : 'Book'}',
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
                                          Spacer(),
                                          Container(
                                            child: MaterialButton(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 48.0),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Text(
                                                'Open Kit',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button
                                                    .copyWith(
                                                      fontFamily: 'Body',
                                                    ),
                                              ),
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              textColor: Colors.white,
                                              onPressed: () {
                                                model
                                                    .navigateToKitDetailsScreen(
                                                        model.userKitList[
                                                            index]);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
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
                )
              : Center(
                  child: Text('No Kits Available'),
                ),
        );
      },
    );
  }
}
