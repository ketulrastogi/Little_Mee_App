import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:little_mee/screens/web_view.dart';
import 'package:connectivity/connectivity.dart';
import 'package:little_mee/screens/network_error.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StreamSubscription<ConnectivityResult> subscription;
  @override
  initState() {
    super.initState();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!
      if (result == ConnectivityResult.none) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NetworkErrorScreen(),
          ),
        );
      }
    });
  }

// Be sure to cancel subscription after you are done
  @override
  dispose() {
    super.dispose();

    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 8.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Little Mee',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.bold,
                        // color: Theme.of(context).primaryColor,
                        color: Colors.white,
                      ),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Learning Videos & Games',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => WebViewScreen(
                                  url:
                                      'https://little-mee.web.app/Letters_A_to_D/ColourGame.html',
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        'https://image.shutterstock.com/image-vector/cartoon-abcd-letters-theme-3-260nw-1405440884.jpg',
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'Letters A To D',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .copyWith(
                                            // fontWeight: FontWeight.bold,
                                            // color: Theme.of(context).primaryColor,
                                            ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => WebViewScreen(
                                  url:
                                      'https://little-mee.web.app/Nos_1_to_5/Matching.html',
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        'https://media.istockphoto.com/vectors/cartoon-numbers-theme-image-2-vector-id1142818134',
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'Numbers 1 To 5',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .copyWith(
                                            // fontWeight: FontWeight.bold,
                                            // color: Theme.of(context).primaryColor,
                                            ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ));
  }
}
