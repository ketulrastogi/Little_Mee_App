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
            backgroundColor: Colors.white,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startFloat,
            floatingActionButton: Container(
              height: 64.0,
              width: 64.0,
              margin: EdgeInsets.only(bottom: 8.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(64.0),
                color: Color(0xFFFF6D01),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 2.0,
                    blurRadius: 4.0,
                    offset: Offset(0.0, 4.0),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/enrichment_icon.png',
                color: Colors.white,
              ),
            ),
            body: Stack(
              children: [
                Positioned(
                  top: 16,
                  left: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 72.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 32,
                        child: Image.network(kitDetails['image']),
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
                    : (model.bookList.length > 0)
                        ? Positioned(
                            top: 112,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: LiveGrid(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 1.2,
                              ),
                              padding: EdgeInsets.only(
                                  top: 16.0,
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 112.0),
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
                                          alignment: (index % 2 == 0)
                                              ? Alignment.centerLeft
                                              : Alignment.centerRight,
                                          child: SizedBox(
                                            // height: 150.0,
                                            // width: 300.0,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  top: 0,
                                                  bottom: 0,
                                                  left: 0,
                                                  right: 0,
                                                  child: Container(
                                                    // width: 300.0,
                                                    // height: 100.0,
                                                    // padding: EdgeInsets.symmetric(
                                                    //     vertical: 32.0),
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
                                                      '${model.bookList[index]['book']}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline6
                                                          .copyWith(
                                                            fontFamily:
                                                                'Headline',
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
                              child: Text(
                                'No books available.',
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
