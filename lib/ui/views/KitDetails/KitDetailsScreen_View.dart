import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:little_mee/constants/const.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/KitDetails/KitDetailsScreen_ViewModel.dart';

class KitDetailsScreenView extends StatelessWidget {
  final Map<String, dynamic> kitDetails;

  const KitDetailsScreenView({Key key, this.kitDetails}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<KitDetailsScreenViewModel>.reactive(
      onModelReady: (model) => model.getBooks(kitDetails),
      viewModelBuilder: () => KitDetailsScreenViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            // appBar: AppBar(
            //   title: Text(
            //     '${(kitDetails != null && kitDetails.containsKey('name')) ? kitDetails['name'] : (model.kitDetails != null && model.kitDetails.containsKey('name')) ? model.kitDetails['name'] : 'Kit Name'}',
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
                (model.bookList.length > 0)
                    ? Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: LiveList(
                          padding: EdgeInsets.all(16.0),
                          showItemInterval: Duration(milliseconds: 150),
                          showItemDuration: Duration(milliseconds: 350),
                          reAnimateOnVisibility: true,
                          scrollDirection: Axis.vertical,
                          itemCount: model.bookList.length,
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
                                      model.navigateToBookDetailsScreen(
                                          model.kitDetails,
                                          model.bookList[index]);
                                    },
                                    child: Container(
                                      height: 200.0,
                                      // color: Colors.red,
                                      // padding: EdgeInsets.all(16.0),
                                      width: MediaQuery.of(context).size.width -
                                          32,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: SvgPicture.asset(
                                              'assets/cloud.svg',
                                              fit: BoxFit.fill,
                                              color: getBackgroundColor(index),
                                            ),
                                          ),
                                          Positioned(
                                            top: 40,
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: Center(
                                              child: Text(
                                                '${model.bookList[index]['book']}',
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
          ),
        );
      },
    );
  }
}
