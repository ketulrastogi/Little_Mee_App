import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:little_mee/constants/const.dart';
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
        return SafeArea(
          child: Scaffold(
            // appBar: AppBar(
            //   title: Text(
            //     'Little Mee',
            //     style: Theme.of(context).textTheme.headline6.copyWith(
            //           fontFamily: 'Headline',
            //         ),
            //   ),
            //   // titleSpacing: 4.0,
            //   centerTitle: true,
            //   // iconTheme: IconThemeData(
            //   //   size: 40.0,
            //   //   color: Colors.white,
            //   // ),
            //   backgroundColor: Colors.transparent,
            //   actions: [
            //     IconButton(
            //       icon: Icon(
            //         Icons.exit_to_app,
            //         color: Colors.white,
            //       ),
            //       onPressed: () async {
            //         await model.signOut();
            //       },
            //     ),
            //   ],
            //   // automaticallyImplyLeading: false,
            // ),
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
                (model.userKitList.length > 0)
                    ? Positioned(
                        top: 56,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: LiveList(
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
                                  child: InkWell(
                                    onTap: () {
                                      model.navigateToKitDetailsScreen(
                                          model.userKitList[index]);
                                    },
                                    child: Container(
                                      height: 256.0,
                                      // color: Colors.yellow,
                                      // padding: EdgeInsets.all(16.0),
                                      width: MediaQuery.of(context).size.width -
                                          32,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 56,
                                            left: 0,
                                            right: 0,
                                            child: SvgPicture.asset(
                                              'assets/cloud.svg',
                                              fit: BoxFit.fill,
                                              color: getBackgroundColor(index),
                                            ),
                                          ),
                                          Positioned(
                                            top: -16,
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: Center(
                                              child: Text(
                                                '${model.userKitList[index]['name']}',
                                                // 'Playgroup',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline5
                                                    .copyWith(
                                                      fontFamily: 'Headline',
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 14,
                                            left: 0,
                                            right: 0,
                                            child: ListTile(
                                              leading: Container(
                                                height: 56.0,
                                                width: 56.0,
                                                decoration: BoxDecoration(
                                                  color:
                                                      getBackgroundColor(index),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Icon(
                                                  Icons.folder_open,
                                                  size: 32.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              title: Text(
                                                'Click here for Enrichment worksheets.',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    .copyWith(
                                                      fontFamily: 'body',
                                                      color: kDarkBlack1Color,
                                                    ),
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
                        ),
                      )
                    : Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                Positioned(
                  top: 8,
                  // bottom: 0,
                  // left: 0,
                  left: 8,
                  child: InkWell(
                    onTap: () async {
                      await model.navigateToProfileScreen();
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Icon(
                        Icons.person,
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
          ),
        );
      },
    );
  }
}
