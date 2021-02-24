import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:little_mee/constants/const.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/home/HomeScreen_ViewModel.dart';

class HomeScreenView extends StatelessWidget {
  final List<String> _kitImages = [
    'assets/images/playgroup.png',
    'assets/images/nursery.png',
    'assets/images/junior_kg.png',
    'assets/images/senior_kg.png',
  ];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      onModelReady: (model) => model.getUserKit(),
      viewModelBuilder: () => HomeScreenViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                // Positioned(
                //   top: 0,
                //   bottom: 0,
                //   left: 0,
                //   right: 0,
                //   child: Image.asset(
                //     'assets/images/home_background.jpg',
                //     fit: BoxFit.fill,
                //   ),
                // ),
                Positioned(
                  top: 16,
                  // bottom: 0,
                  left: 72,
                  right: 72,
                  child: Image.asset(
                    'assets/images/logo_top.png',
                    fit: BoxFit.contain,
                  ),
                ),
                (model.isBusy)
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).primaryColor),
                        ),
                      )
                    : (model.userKitList.length > 0)
                        ? Positioned(
                            top: 72,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              32,
                                          child: Image.network(model
                                              .userKitList[index]['image']),
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
                                'No kits available.',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                      fontFamily: 'Headline',
                                    ),
                              ),
                            ),
                          ),
                // Positioned(
                //   top: 16,
                //   left: 8,
                //   child: InkWell(
                //     onTap: () async {
                //       // await model.navigateToProfileScreen();
                //     },
                //     child: Container(
                //       height: 64.0,
                //       width: 64.0,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(32.0),
                //       ),
                //       child: ClipRRect(
                //         borderRadius: BorderRadius.circular(32.0),
                //         child: Image.asset('assets/images/back_arrow.png'),
                //       ),
                //     ),
                //   ),
                // ),
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
